import SwiftUI

public struct NewsView: View {
    
    // MARK: - Lifecycle
    
    public init() {}
    
    // MARK: - Public
    
    public var body: some View {
        NavigationView {
            ZStack {
                Color(Asset.Colors.backgroundColor.color)
                    .edgesIgnoringSafeArea(.all)
                
                Text(L10n.News.hello)
                    .fontStyle(.headline)
                    .foregroundColor(Asset.Colors.textColor.swiftUIColor)
            }
            .navigationTitle(L10n.News.title)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
