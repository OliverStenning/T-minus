import SwiftUI
import UIKit

// MARK: - FontStyle

public enum FontStyle: CaseIterable {
    case title
    case headline
    case body

    // MARK: Public

    public var description: FontDescription {
        switch self {
            case .title: return FontDescription(font: .atkinsonHyperlegibleBold, size: 36, textStyle: .title1)
            case .headline: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 30, textStyle: .headline)
            case .body: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 16, textStyle: .body)
        }
    }
    
    public var uiFont: UIFont {
        FontBook.shared.font(for: self)
    }
    
    public var font: Font {
        Font(uiFont: uiFont)
    }
    
    public func uiFont(scaleFontDynamically: Bool = true) -> UIFont {
        FontBook.shared.font(for: self, scaleFontDynamically: scaleFontDynamically)
    }
}

// MARK: - FontDescription

public struct FontDescription {
    public let font: CustomFont
    public let size: CGFloat
    public let textStyle: UIFont.TextStyle
}

// MARK: - CustomFont

public enum CustomFont: CaseIterable {
    case atkinsonHyperlegibleRegular
    case atkinsonHyperlegibleBold
    case atkinsonHyperlegibleItalic
    case atkinsonHyperlegibleBoldItalic

    // MARK: - Public

    public var fontName: String {
        switch self {
            case .atkinsonHyperlegibleRegular: return "AtkinsonHyperlegible-Regular"
            case .atkinsonHyperlegibleBold: return "AtkinsonHyperlegible-Bold"
            case .atkinsonHyperlegibleItalic: return "AtkinsonHyperlegible-Italic"
            case .atkinsonHyperlegibleBoldItalic: return "AtkinsonHyperlegible-BoldItalic"
        }
    }

    // MARK: Internal

    var fileName: String {
        switch self {
            case .atkinsonHyperlegibleRegular: return "AtkinsonHyperlegible-Regular"
            case .atkinsonHyperlegibleBold: return "AtkinsonHyperlegible-Bold"
            case .atkinsonHyperlegibleItalic: return "AtkinsonHyperlegible-Italic"
            case .atkinsonHyperlegibleBoldItalic: return "AtkinsonHyperlegible-BoldItalic"
        }
    }

}

// MARK: - FontBook

private struct FontBook {

    // MARK: - Lifecycle

    private init() {
        loadCustomFonts()
    }

    // MARK: - Internal

    static let shared = FontBook()

//    public func font(for customFont: CustomFont, size: CGFloat) -> UIFont {
//        guard let customFont = UIFont(name: customFont.fontName, size: size) else {
//            assertionFailure("Unable to load preferred font")
//            return UIFont.systemFont(ofSize: size)
//        }
//        return customFont
//    }
    
    func font(for fontStyle: FontStyle, scaleFontDynamically: Bool = true) -> UIFont {
        guard let defaultFont = UIFont(name: fontStyle.description.font.fontName, size: fontStyle.description.size) else {
            assertionFailure("Unable to load preferred font")
            return UIFont.preferredFont(forTextStyle: fontStyle.description.textStyle)
        }
        let fontMetrics  = UIFontMetrics(forTextStyle: fontStyle.description.textStyle)
        let scaledFont = scaleFontDynamically ? fontMetrics.scaledFont(for: defaultFont) : defaultFont
        return scaledFont
    }

    // MARK: Private

    private func loadCustomFonts() {
        for customFont in CustomFont.allCases {
            guard let url = Bundle.main.url(forResource: customFont.fileName, withExtension: "ttf"),
                  let data = try? Data(contentsOf: url),
                  let provider = CGDataProvider(data: data as CFData),
                  let font = CGFont(provider)
            else {
                return assertionFailure("Unable to load font named \(customFont.fileName)")
            }
            CTFontManagerRegisterGraphicsFont(font, nil)
        }
    }

}
