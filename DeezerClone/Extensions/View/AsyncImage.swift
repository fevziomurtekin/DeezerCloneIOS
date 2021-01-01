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
    
    init(
        url: URL,
        @ViewBuilder image: @escaping (UIImage) -> Image = Image.init(uiImage:)
    ) {
        self.image = image
        _loader = StateObject(wrappedValue: ImageLoader(url: url, cache: Environment(\.imageCache).wrappedValue))
    }
    
    var body: some View {
        content
            .onAppear(perform: loader.load)
    }
    
    private var content: some View {
        Group {
            if loader.image != nil {
                image(loader.image!)
                    .ignoresSafeArea()
                    .scaledToFill()
                    .clipShape(Rectangle())
                    .cornerRadius(CGFloat(15))
                    .shadow(radius: CGFloat(15))

            }
        }
    }
}
