//
//  ColorTheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation

enum ColorTheme: String {
    case light = "light"
    case dark = "dark"
    case achromatopsia = "achromatopsia"
    case tritanopia = "tritanopia"
}

extension ColorTheme {
    var scheme: ColorScheme {
        switch self {
        case .light:
            return LightColorScheme()
        case .dark:
            return DarkColorScheme()
        case .achromatopsia:
            return AchromatopsiaColorScheme()
        case .tritanopia:
            return TritanopiaColorScheme()
        }
    }
}
