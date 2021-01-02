//
//  ArtistDetail.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 2.01.2021.
//

import SwiftUI

struct ArtistDetail: View {
    var artistData: ArtistData
    var body: some View {
        ZStack {
            GeometryReader { geo in
                VStack{
                    
                }
                .foregroundColor(Color.black)
                .background(
                    AsyncImage(
                        url: URL(string: artistData.picture_big)!,
                        imageType: DeezerImageType.ArtistDetails
                            )
                )
            }
        }
    }
}
