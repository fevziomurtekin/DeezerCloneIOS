//
//  GenreView.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 2.01.2021.
//

import SwiftUI

struct GenreView: View {
    var genreDatas: [GenreData]?
    
    var body: some View {
        NavigationView {
            GenreList(genreDatas: (
                genreDatas ??
                    [GenreData(id: 0, name: "Tümü", picture: "", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", type: "")]
            ))
        }
    }
}
