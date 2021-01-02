//
//  SearchView.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 2.01.2021.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack{
           SearchBar(text: $searchText, placeholder : "Search Genre, Artist or Album...")
            if searchText != "" {
                Text("OK!")
            } else {
                Text("Search Keyword")
            }
        }.navigationBarTitle(Text("Search"))
        
    }
}
