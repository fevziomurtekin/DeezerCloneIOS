//
//  Endpoints.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 31.12.2020.
//

import Foundation

private var baseUrl = "https://api.deezer.com"

// end points
var POINT_GENRE = baseUrl+"/genre"
func POINT_ARTISTS(genreId:Int) -> String {
    return baseUrl+"/genre/\(genreId)/artists"
}
func POINT_SEARCH(query: String) -> String {
    return baseUrl+"/search?q=\(query)"
}
