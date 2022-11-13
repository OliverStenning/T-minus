import SwiftUI

// MARK: - FontStyleModifier

struct FontStyleModifier: ViewModifier {
    let fontStyle: FontStyle
    
    func body(content: Content) -> some View {
        content
            .font(Font(uiFont: fontStyle.uiFont))
    }
}

public extension View {
    func fontStyle(_ fontStyle: FontStyle) -> some View {
        modifier(FontStyleModifier(fontStyle: fontStyle))
    }
}
