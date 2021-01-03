//
//  SearchModel.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 3.01.2021.
//

import Foundation

struct SearchModel: Codable{
    var data: [SearchData]
    var total: Int
    var next: String
}

struct SearchData: Codable {
    var id: Int
    var readable: Bool
    var title: String
    var title_short: String
    var link: String
    var duration: Int
    var rank: Int
    var explicit_lyrics: Bool
    var explicit_content_lyrics: Int
    var explicit_content_cover: Int
    var preview: String
    var md5_image: String
    var artist: [SearchArtistData]
    var album: [SearchAlbumData]
    var type: String
}

struct SearchArtistData: Codable {
    var id: Int
    var name: String
    var link: String
    var picture: String
    var picture_small: String
    var picture_medium: String
    var picture_big: String
    var picture_xl: String
    var tracklist: String
    var type: String
}

struct SearchAlbumData: Codable {
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

