//
//  ArtistModel.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import Foundation

struct ArtistModel: Codable {
    var data: [ArtistData]
}

struct ArtistData: Codable {
    var id: Int
    var name: String
    var picture: String
    var picture_small:String
    var picture_medium: String
    var picture_big: String
    var picture_xl: String
    var radio: Bool
    var tracklist: String
    var type:String
}
