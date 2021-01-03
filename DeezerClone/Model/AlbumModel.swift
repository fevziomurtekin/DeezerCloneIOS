//
//  AlbumModel.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 3.01.2021.
//

import Foundation

struct AlbumModel: Codable {
    var data: [AlbumData]
}

struct AlbumData: Codable {
    var id: Int
    var title: String
    var cover: String
    var cover_small: String
    var cover_medium: String
    var cover_big: String
    var cover_xl: String
    var md5_image: String
    var tracklist: String
    var type: String
}
