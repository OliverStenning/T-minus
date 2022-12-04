import SwiftUI

struct CapsuledText: View {
    let text: String
    let font: Font
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 3)
                .frame(width: 6)
                .frame(maxHeight: .infinity)
                .foregroundColor(Asset.Colors.accentColor.swiftUIColor)
            
            Text(text)
                .frame(maxHeight: .infinity)
                .font(font)
                .foregroundColor(.white)
        }
        .fixedSize(horizontal: false, vertical: true)
        
    }
}

struct CapsuledText_Previews: PreviewProvider {
    static var previews: some View {
        CapsuledText(text: "Starlink 4-35 (v1.5)", font: FontStyle.largeTitle.font)
    }
}
