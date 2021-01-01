import SwiftUI

struct ContentView: View {
    
    @State var isShownSplash:Bool = true
    @State var genreModel:GenreModel? = nil
    
    var body: some View {
        VStack {
            if self.isShownSplash {
                SplashView()
            } else {
                HomeView(genreModel: self.genreModel)
            }
        }.onAppear {
            guard let genreUrl = URL(string: POINT_GENRE) else {
                print("link broke : " + POINT_GENRE )
                return
            }
            URLSession.shared.dataTask(with: URLRequest(url: genreUrl)){(data,response, error) in
                if let data = data {
                    if let response = try? JSONDecoder().decode(GenreModel.self, from: data){
                        DispatchQueue.main.async {
                            self.genreModel = response
                            self.isShownSplash = false
                        }
                        return
                    }
                }
            }.resume()
        }
    }
}

struct HomeView: View {
    var genreModel: GenreModel?
    
    var body: some View {
        GenreList(genreDatas: (
            genreModel?.data ??
                [GenreData(id: 0, name: "Tümü", picture: "", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", type: "")]
        ))
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
        ContentView(
            genreModel: GenreModel(data: [GenreData(id: 0, name: "Tümü", picture: "", picture_small: "", picture_medium: "", picture_big: "", picture_xl: "", type: "")])
        )
    }
}
