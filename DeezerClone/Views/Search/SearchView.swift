//
//  SearchView.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 2.01.2021.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    @State private var callState: ApiResult = ApiResult.LOADING
    @State private var searchModel: SearchModel?
    
    var body: some View {
        ScrollView{
           SearchBar(text: $searchText, placeholder : "Search Genre, Artist or Album...")
            if searchText != "" && searchText.count > 2{
                VStack{
                    if callState == ApiResult.ERROR {
                        Text("Not found genre, album or artist about '\(searchText)'")
                    } else if callState == ApiResult.LOADING {
                        ProgressView("Loading...")
                    } else {
                        SearchList(searchs: searchModel?.data)
                    }
                }.onAppear{
                    self.callState = ApiResult.LOADING
                    guard let searchUrl = URL(string: POINT_SEARCH(query: searchText)) else {
                        print("link broke : " + POINT_SEARCH(query: searchText) )
                        self.callState = ApiResult.ERROR
                        return
                    }
                    URLSession.shared.dataTask(with: URLRequest(url: searchUrl)){(data,response, error) in
                        if let data = data {
                            if let response = try? JSONDecoder().decode(SearchModel.self, from: data){
                                DispatchQueue.main.async {
                                    self.searchModel = response
                                    self.callState = ApiResult.SUCCESS
                                }
                                return
                            }
                        }
                    }.resume()
                }
            } else {
                Text("Search Keyword")
            }
        }.navigationBarTitle(Text("Search"))
        
    }
}
