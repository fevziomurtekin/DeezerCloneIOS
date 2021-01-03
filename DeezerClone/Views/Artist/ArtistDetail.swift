//
//  ArtistDetail.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 2.01.2021.
//

import SwiftUI

struct ArtistDetail: View {
    var artistData: ArtistData
    
    @State var selectingTabIndex = 0
    let tabOne = "Albums"
    let tabTwo = "Related Details"
    
    var body: some View {
        ScrollView(.vertical) {
            AsyncImage(
                url: URL(string: artistData.picture_big)!,
                imageType: DeezerImageType.ArtistDetails,
                image: { Image(uiImage: $0).resizable() }
            )
            .scaledToFill()
            .frame(height: UIScreen.main.bounds.height / 25)
        }
        
    }
}
            
