import SwiftUI

struct UpcomingLaunchVIew: View {
    var body: some View {
        ZStack {
            Image(asset: Asset.placeholderBackground2)
                .edgesIgnoringSafeArea(.all)
            
            LinearGradient(colors: [.clear, Asset.Colors.backgroundColor.swiftUIColor], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Spacer()
                    CapsuledText(text: "CRS 26", size: 32)
                    Text("Falcon Heavy")
                        .foregroundColor(.white)
                        .font(Font(uiFont: FontBook.shared.font(for: .archivoMedium, size: 24)))
                    
                    Text("T- 3 days, 14 hours")
                        .foregroundColor(.init(white: 0.6))
                        .font(Font(uiFont: FontBook.shared.font(for: .archivoRegular, size: 22)))
            
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 88)
        }
    }
}

struct UpcomingLaunchVIew_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingLaunchVIew()
    }
}
