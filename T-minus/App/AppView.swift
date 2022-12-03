import SwiftUI

struct AppView: View {
    
    // MARK: - Lifecycle
    
    init() {
        let fontStyle: FontStyle = .title
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: fontStyle.uiFont, .foregroundColor: Asset.Colors.textColor.color]
    }
    
    // MARK: - Public
    
    var body: some View {
        RecentLaunchView()
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
