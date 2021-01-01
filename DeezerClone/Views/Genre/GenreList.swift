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
        List(genreDatas, id: \.id) { data in
            GenreRow(genreData: data)
        }
    }
}

