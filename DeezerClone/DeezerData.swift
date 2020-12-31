//
//  DeezerData.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 31.12.2020.
//

import Foundation

struct GenreModel: Codable{
    var data: [GenreData]
}

struct GenreData: Codable{
    var id: Int
    var name: String
    var picture: String
    var picture_small:String
    var picture_medium: String
    var picture_big: String
    var picture_xl: String
    var type:String
}
