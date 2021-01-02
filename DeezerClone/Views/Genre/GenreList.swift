//
//  GenreList.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import SwiftUI

struct GenreList: View {
    
    var genreDatas: [GenreData]
    
    var body: some View{
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach((0...genreDatas.count-1), id: \.self) { index in
                    NavigationLink(destination: ArtistsView(genreData: genreDatas[index])) {
                        GenreRow(genreData: genreDatas[index])
                    }
                }
            }
        }
    }
}

