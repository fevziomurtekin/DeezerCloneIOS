//
//  SearchList.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 3.01.2021.
//

import SwiftUI

struct SearchList: View {
    
    var searchDatas: [SearchData]
    
    init(searchs: [SearchData]?){
        self.searchDatas = searchs ?? [SearchData(id: 0, readable: false, title: "", title_short: "", link: "", duration: 0, rank: 0, explicit_lyrics: false, explicit_content_lyrics: 0, explicit_content_cover: 0, preview: "", md5_image: "", artist: [SearchArtistData(id: 0, name: "", link: "", picture: "", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", tracklist: "", type: "")], album: [SearchAlbumData(id: 0, title: "", cover: "", cover_small: "", cover_medium: "", cover_big: "", cover_xl: "", md5_image: "", tracklist: "", type: "")], type: "")]
    }
    
    var body: some View {
        ForEach((0...searchDatas.count-1), id: \.self) { index in
            let searchData = searchDatas[index]
            let searchType = searchDatas[index].type
            
            if searchType == TYPE_ALBUM {
                NavigationLink(destination: SearchDetailView(searchData: searchData)){
                    Text(searchData.title)
                }
            } else if searchType == TYPE_ARTIST {
                NavigationLink(destination: SearchDetailView(searchData: searchData)){
                    Text(searchData.title)
                }
            } else {
                NavigationLink(destination: SearchDetailView(searchData: searchData)){
                    Text(searchData.title)
                }
            }
        }
    }
}
