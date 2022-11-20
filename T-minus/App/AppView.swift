import SwiftUI

struct AppView: View {
    
    // MARK: - Lifecycle
    
    init() {
        let fontStyle: FontStyle = .title
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: fontStyle.uiFont, .foregroundColor: Asset.Colors.textColor.color]
    }
    
    // MARK: - Public
    
    var body: some View {
        TabView {
            LaunchesView()
                .tabItem { TabViewLabel(text: L10n.Launches.title, image: "launches") }
            
            NewsView()
                .tabItem { TabViewLabel(text: "News", image: "news") }
            
            RocketsView()
                .tabItem { TabViewLabel(text: "Rockets", image: "rockets") }
            
            PhotosView()
                .tabItem { TabViewLabel(text: "Photos", image: "photos") }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
