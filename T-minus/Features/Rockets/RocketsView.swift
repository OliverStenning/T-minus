import SwiftUI

public struct RocketsView: View {
    
    // MARK: - Lifecycle
    
    public init() {}
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            Text("Hello, Rockets!")
                .navigationTitle("Rockets")
        }
    }
}

struct RocketsView_Previews: PreviewProvider {
    static var previews: some View {
        RocketsView()
    }
}
