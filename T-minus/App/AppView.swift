import SwiftUI

struct AppView: View {
    
    // MARK: - Lifecycle
    
    init() {
        let fontStyle: FontStyle = .title
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: fontStyle.uiFont]
    }
    
    // MARK: - Public
    
    var body: some View {
        TabView {
            LaunchesView()
                .tabItem { TabViewLabel(text: "Launches", image: "launches") }
            
            NewsView()
                .tabItem { TabViewLabel(text: "News", image: "news") }
            
            RocketsView()
                .tabItem { TabViewLabel(text: "Rockets", image: "rockets") }
            
            PhotosView()
                .tabItem { TabViewLabel(text: "Photos", image: "photos") }
        }
    }
}

struct TabViewLabel: View {
    let text: String
    let image: String
    
    var body: some View {
        Image(image)
            .renderingMode(.template)
        Text(text)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
