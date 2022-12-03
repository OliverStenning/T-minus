import SwiftUI

struct CapsuledText: View {
    let text: String
    let size: CGFloat
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 3)
                .frame(width: 6)
                .frame(maxHeight: .infinity)
                .foregroundColor(Asset.Colors.accentColor.swiftUIColor)
            
            Text(text)
                .frame(maxHeight: .infinity)
                .font(Font(uiFont: FontBook.shared.font(for: .archivoMedium, size: size)))
                .foregroundColor(.white)
        }
        .fixedSize(horizontal: false, vertical: true)
        
    }
}

struct CapsuledText_Previews: PreviewProvider {
    static var previews: some View {
        CapsuledText(text: "Starlink 4-35 (v1.5)", size: 32)
    }
}
