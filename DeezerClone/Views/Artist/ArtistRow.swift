//
//  ArtistRow.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 2.01.2021.
//

import SwiftUI

struct ArtistRow: View{
    var artistData: ArtistData
    
    var body: some View{
        Text(artistData.name)
            .font(.title2)
            .fontWeight(Font.Weight.bold)
            .foregroundColor(Color.white)
            .background(
                AsyncImage(url: URL(string:artistData.picture)!)
            ).padding(40)
    }
}



