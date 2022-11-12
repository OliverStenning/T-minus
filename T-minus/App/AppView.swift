import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            LaunchesView()
                .tabItem {
                    Image("launches")
                        .renderingMode(.template)
                    Text("Launches")
                }
            
            NewsView()
                .tabItem {
                    Image("news")
                        .renderingMode(.template)
                    Text("News")
                }
            
            RocketsView()
                .tabItem {
                    Image("rocket")
                        .renderingMode(.template)
                    Text("Rockets")
                }
            
            PhotosView()
                .tabItem {
                    Image("photos")
                        .renderingMode(.template)
                    Text("Photos")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
