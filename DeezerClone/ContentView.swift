import SwiftUI

struct SplashScreen: View {
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                VStack(content: {
                    Text("DeezerClone")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
