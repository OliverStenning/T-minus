import SwiftUI

public struct RecentLaunchView: View {
    
    // MARK: - Lifecycle
    
    public init() {
        
    }
    
    // MARK: - Public
    
    public var body: some View {
        ZStack {
            Image(asset: Asset.placeholderBackground)
                .edgesIgnoringSafeArea(.all)
            
            LinearGradient(colors: [.clear, Asset.Colors.backgroundColor.swiftUIColor], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Spacer()
                    CapsuledText(text: "Starlink 4-35 (v1.5)", size: 32)
                    Text("Falcon 9")
                        .foregroundColor(.white)
                        .font(Font(uiFont: FontBook.shared.font(for: .archivoMedium, size: 24)))
                    
                    Text("T- 3 days, 14 hours")
                        .foregroundColor(.init(white: 0.6))
                        .font(Font(uiFont: FontBook.shared.font(for: .archivoRegular, size: 22)))
            
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 32)
        }
    }
}

struct RecentLaunchView_Previews: PreviewProvider {
    static var previews: some View {
        RecentLaunchView()
    }
}
