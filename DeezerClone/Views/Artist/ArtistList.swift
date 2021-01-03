//
//  ArtistList.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import SwiftUI

struct ArtistList: View {
    var artistDatas: [ArtistData]
    
    var body: some View{
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach((0...artistDatas.count-1), id: \.self) { index in
                    NavigationLink(destination: ArtistDetail(artistData: artistDatas[index])) {
                        ArtistRow(artistData: artistDatas[index])
                    }
                }
            }
        }
    }
}
