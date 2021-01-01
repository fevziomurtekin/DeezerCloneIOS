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
        HStack {
            AsyncImage(url: URL(string:genreData.picture)!, placeholder: {
                Text("Loading...")
            }).frame(width: 100, height: 100, alignment: Alignment.center)
            Text(genreData.name)
        }
    }
}

struct GenreRowPreview: PreviewProvider {
    static var previews: some View{
        GenreRow(genreData: GenreData(id: 0, name: "Hepsi", picture: "https://api.deezer.com/genre/0/image", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", type: "genre"))
    }
}
