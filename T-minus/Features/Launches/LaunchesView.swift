import SwiftUI

public struct LaunchesView: View {
    
    // MARK: - Lifecycle
    
    public init() {
        
    }
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            Text("Hello, Launches!")
                .fontStyle(.headline)
                .navigationTitle("Launches")
        }
    }
}

struct LaunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
    }
}
