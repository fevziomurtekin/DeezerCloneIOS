//
//  AsyncImage.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import SwiftUI

struct AsyncImage: View {
    @StateObject private var loader: ImageLoader
    private let image: (UIImage) -> Image
    private let imageType: DeezerImageType
    
    init(
        url: URL,
        imageType: DeezerImageType = DeezerImageType.GridItem,
        @ViewBuilder image: @escaping (UIImage) -> Image = Image.init(uiImage:)
    ) {
        self.image = image
        self.imageType = imageType
        _loader = StateObject(wrappedValue: ImageLoader(url: url, cache: Environment(\.imageCache).wrappedValue))
    }
    
    var body: some View {
        content
            .onAppear(perform: loader.load)
    }
    
    private var content: some View {
        Group {
            if loader.image != nil {
                if imageType == DeezerImageType.GridItem {
                    image(loader.image!)
                        .ignoresSafeArea()
                        .scaledToFill()
                        .clipShape(Rectangle())
                        .cornerRadius(CGFloat(15))
                        .shadow(radius: CGFloat(15))
                }  else {
                    image(loader.image!)
                }
            }
        }
    }
}
