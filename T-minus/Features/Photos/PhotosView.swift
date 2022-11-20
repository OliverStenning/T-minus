import SwiftUI

public struct PhotosView: View {
    
    // MARK: - Lifecycle
    
    public init() {}
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            Text("Hello, Photos!")
                .navigationTitle("Photos")
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
