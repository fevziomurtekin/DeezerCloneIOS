//
//  SplashView.swift
//  DeezerClone
//
//  Created by Fevzi Ömür Tekin on 1.01.2021.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
            VStack(content: {
                Image("deezerIcon")
                    .resizable()
                    .scaledToFit()
                    .padding(30.0)
                
                Text("DeezerClone")
                    .font(Font.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                })
        )
    }
}
