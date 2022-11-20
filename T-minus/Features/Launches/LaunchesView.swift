import SwiftUI

public struct LaunchesView: View {
    
    // MARK: - Lifecycle
    
    public init() {
        
    }
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            ZStack {
                Color(Asset.Colors.backgroundColor.color)
                    .edgesIgnoringSafeArea(.all)
                
                Text(L10n.Launches.hello)
                    .fontStyle(.headline)
                    .foregroundColor(Asset.Colors.textColor.swiftUIColor)
            }
            .navigationTitle(L10n.Launches.title)
        }
    }
}

struct LaunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
    }
}
