//
//  GenreRow.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import SwiftUI

struct GenreRow: View{
    var genreData: GenreData
    
    var body: some View{
        Text(genreData.name)
            .font(.title2)
            .fontWeight(Font.Weight.bold)
            .foregroundColor(Color.white)
            .background(
                AsyncImage(url: URL(string:genreData.picture)!)
            ).padding(40)
    }
}

struct GenreRowPreview: PreviewProvider {
    static var previews: some View{
        GenreRow(genreData: GenreData(id: 0, name: "Hepsi", picture: "https://api.deezer.com/genre/0/image", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", type: "genre"))
    }
}
