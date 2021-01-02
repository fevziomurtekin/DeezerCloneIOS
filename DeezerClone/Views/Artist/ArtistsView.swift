//
//  ArtistsView.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import SwiftUI

struct ArtistsView: View {
    
    var genreData: GenreData
    @State var isLoadData = false
    @State private var artistsModel: ArtistModel?
    @State private var defaultValue = [ArtistData(id: 0, name: "ezhel", picture: "", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", radio: false, tracklist: "", type: "")]
    
    var body: some View {
        ZStack {
            if isLoadData {
                ArtistList(
                    artistDatas: artistsModel?.data ?? defaultValue)
                     .navigationTitle(Text(genreData.name))
             } else{
                 ProgressView("Loading...")
                     .navigationTitle(Text(genreData.name))
             }
        }.onAppear{
            guard let artistsUrl = URL(string: POINT_ARTISTS(genreId: genreData.id)) else {
                print("link broke : " + POINT_GENRE )
                return
            }
            URLSession.shared.dataTask(with: URLRequest(url: artistsUrl)){(data,response, error) in
                if let data = data {
                    if let response = try? JSONDecoder().decode(ArtistModel.self, from: data){
                        DispatchQueue.main.async {
                            self.artistsModel = response
                            self.isLoadData = true
                        }
                        return
                    }
                }
            }.resume()
        }
    }
}
