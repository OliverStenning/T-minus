import SwiftUI

public struct RocketsView: View {
    
    // MARK: - Lifecycle
    
    public init() {}
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            ZStack {
                Color(Asset.Colors.backgroundColor.color)
                    .edgesIgnoringSafeArea(.all)
                
                Text(L10n.Rockets.hello)
                    .fontStyle(.headline)
                    .foregroundColor(Asset.Colors.textColor.swiftUIColor)
            }
            .navigationTitle(L10n.Rockets.title)
        }
    }
}

struct RocketsView_Previews: PreviewProvider {
    static var previews: some View {
        RocketsView()
    }
}
