import SwiftUI

struct ContentView: View {
    
    @State var isShownSplash:Bool = true
    @State var genreModel:GenreModel? = nil
    
    var body: some View {
        VStack {
            if self.isShownSplash {
                SplashView()
            } else {
                HomeView()
            }
        }.onAppear {
            guard let url = URL(string: POINT_GENRE) else {
                print("link broke : " + POINT_GENRE )
                return
            }
            URLSession.shared.dataTask(with: url){(data,response, error) in
                if let data = data {
                    if let response = try? JSONDecoder().decode(GenreModel.self, from: data){
                        DispatchQueue.main.async {
                            self.genreModel = response
                            self.isShownSplash = false
                        }
                    }
                }
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Item")
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
