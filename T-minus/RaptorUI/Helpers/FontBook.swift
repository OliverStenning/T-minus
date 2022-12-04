import SwiftUI
import UIKit

// MARK: - FontStyle

public enum FontStyle: CaseIterable {
    case largeTitle
    case title1
    case title2
    case title3
    case headline
    case body
    case callout
    case subhead
    case footnote
    case caption1
    case caption2

    // MARK: Public

    fileprivate var description: FontDescription {
        switch self {
            case .largeTitle: return FontDescription(font: .archivoMedium, size: 34, textStyle: .largeTitle)
            case .title1: return FontDescription(font: .archivoMedium, size: 28, textStyle: .title1)
            case .title2: return FontDescription(font: .archivoMedium, size: 22, textStyle: .title2)
            case .title3: return FontDescription(font: .archivoMedium, size: 20, textStyle: .title3)
            case .headline: return FontDescription(font: .archivoSemiBold, size: 17, textStyle: .headline)
            case .body: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 17, textStyle: .body)
            case .callout: return FontDescription(font: .archivoMedium, size: 16, textStyle: .callout)
            case .subhead: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 15, textStyle: .subheadline)
            case .footnote: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 13, textStyle: .footnote)
            case .caption1: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 12, textStyle: .caption1)
            case .caption2: return FontDescription(font: .atkinsonHyperlegibleRegular, size: 11, textStyle: .caption2)
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

fileprivate struct FontDescription {
    public let font: CustomFont
    public let size: CGFloat
    public let textStyle: UIFont.TextStyle
}

// MARK: - CustomFont

fileprivate enum CustomFont: CaseIterable {
    case archivoRegular
    case archivoMedium
    case archivoSemiBold
    case atkinsonHyperlegibleRegular
    case atkinsonHyperlegibleBold
    case atkinsonHyperlegibleItalic
    case atkinsonHyperlegibleBoldItalic

    // MARK: - Public

    fileprivate var fontName: String {
        switch self {
            case .archivoRegular: return "Archivo-Regular"
            case .archivoMedium: return "Archivo-Medium"
            case .archivoSemiBold: return "Archivo-SemiBold"
            case .atkinsonHyperlegibleRegular: return "AtkinsonHyperlegible-Regular"
            case .atkinsonHyperlegibleBold: return "AtkinsonHyperlegible-Bold"
            case .atkinsonHyperlegibleItalic: return "AtkinsonHyperlegible-Italic"
            case .atkinsonHyperlegibleBoldItalic: return "AtkinsonHyperlegible-BoldItalic"
        }
    }

    // MARK: Internal

    fileprivate var fileName: String {
        switch self {
            case .archivoRegular: return "Archivo-Regular"
            case .archivoMedium: return "Archivo-Medium"
            case .archivoSemiBold: return "Archivo-SemiBold"
            case .atkinsonHyperlegibleRegular: return "AtkinsonHyperlegible-Regular"
            case .atkinsonHyperlegibleBold: return "AtkinsonHyperlegible-Bold"
            case .atkinsonHyperlegibleItalic: return "AtkinsonHyperlegible-Italic"
            case .atkinsonHyperlegibleBoldItalic: return "AtkinsonHyperlegible-BoldItalic"
        }
    }

}

// MARK: - FontBook

fileprivate struct FontBook {

    // MARK: - Lifecycle

    private init() {
        loadCustomFonts()
    }

    // MARK: Private

    fileprivate static let shared = FontBook()
    
    fileprivate func font(for fontStyle: FontStyle, scaleFontDynamically: Bool = true) -> UIFont {
        guard let defaultFont = UIFont(name: fontStyle.description.font.fontName, size: fontStyle.description.size) else {
            assertionFailure("Unable to load preferred font")
            return UIFont.preferredFont(forTextStyle: fontStyle.description.textStyle)
        }
        let fontMetrics  = UIFontMetrics(forTextStyle: fontStyle.description.textStyle)
        let scaledFont = scaleFontDynamically ? fontMetrics.scaledFont(for: defaultFont) : defaultFont
        return scaledFont
    }



    fileprivate func loadCustomFonts() {
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
