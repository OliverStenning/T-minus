import SwiftUI

struct TabViewLabel: View {
    let text: String
    let image: String
    
    var body: some View {
        Image(image)
            .renderingMode(.template)
            .tint(Color("Accent"))
        Text(text)
            .foregroundColor(Color("Text"))
    }
}
