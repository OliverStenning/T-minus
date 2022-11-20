import SwiftUI

public struct PhotosView: View {
    
    // MARK: - Lifecycle
    
    public init() {}
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            ZStack {
                Color(Asset.Colors.backgroundColor.color)
                    .edgesIgnoringSafeArea(.all)
                
                Text(L10n.Photos.hello)
                    .fontStyle(.headline)
                    .foregroundColor(Asset.Colors.textColor.swiftUIColor)
            }
            .navigationTitle(L10n.Photos.title)
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
