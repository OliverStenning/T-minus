// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Launches {
    /// Hello, Launches!
    internal static let hello = L10n.tr("Localizable", "Launches.hello", fallback: "Hello, Launches!")
    /// Launches
    internal static let title = L10n.tr("Localizable", "Launches.title", fallback: "Launches")
  }
  internal enum News {
    /// Hello, News!
    internal static let hello = L10n.tr("Localizable", "News.hello", fallback: "Hello, News!")
    /// News
    internal static let title = L10n.tr("Localizable", "News.title", fallback: "News")
  }
  internal enum Photos {
    /// Hello, Photos!
    internal static let hello = L10n.tr("Localizable", "Photos.hello", fallback: "Hello, Photos!")
    /// Photos
    internal static let title = L10n.tr("Localizable", "Photos.title", fallback: "Photos")
  }
  internal enum Rockets {
    /// Hello, Rockets!
    internal static let hello = L10n.tr("Localizable", "Rockets.hello", fallback: "Hello, Rockets!")
    /// Rockets
    internal static let title = L10n.tr("Localizable", "Rockets.title", fallback: "Rockets")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
