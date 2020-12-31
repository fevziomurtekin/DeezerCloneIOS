import SwiftUI

struct ContentView: View {
    
    @State var isShownSplash:Bool = true
    
    var body: some View {
        VStack {
            if self.isShownSplash {
                SplashView()
            } else {
                HomeView()
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation{
                    self.isShownSplash = false
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
