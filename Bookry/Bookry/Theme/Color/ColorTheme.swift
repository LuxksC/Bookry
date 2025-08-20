//
//  ColorTheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import SwiftUI

enum ColorTheme: String {
    case light = "light"
    case dark = "dark"
    case deuteranopia = "deuteranopia"
    case protanopia = "protanopia"
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
        case .deuteranopia:
            return DeuteranopiaColorScheme()
        case .protanopia:
            return ProtanopiaColorScheme()
        }
    }
    
    var colorPreviewPalette: [Color] {
        switch self {
        case .light:
            return [
                LightColorScheme().primary,
                LightColorScheme().secondary,
                LightColorScheme().success,
                LightColorScheme().warning,
                LightColorScheme().danger,
                LightColorScheme().gray
            ]
        case .dark:
            return [
                DarkColorScheme().primary,
                DarkColorScheme().secondary,
                DarkColorScheme().success,
                DarkColorScheme().warning,
                DarkColorScheme().danger,
                DarkColorScheme().gray
            ]
        case .deuteranopia:
            return [
                DeuteranopiaColorScheme().primary,
                DeuteranopiaColorScheme().secondary,
                DeuteranopiaColorScheme().success,
                DeuteranopiaColorScheme().warning,
                DeuteranopiaColorScheme().danger,
                DeuteranopiaColorScheme().gray
            ]
        case .protanopia:
            return [
                ProtanopiaColorScheme().primary,
                ProtanopiaColorScheme().secondary,
                ProtanopiaColorScheme().success,
                ProtanopiaColorScheme().warning,
                ProtanopiaColorScheme().danger,
                ProtanopiaColorScheme().gray
            ]
        case .achromatopsia:
            return [
                AchromatopsiaColorScheme().primary,
                AchromatopsiaColorScheme().secondary,
                AchromatopsiaColorScheme().success,
                AchromatopsiaColorScheme().warning,
                AchromatopsiaColorScheme().danger,
                AchromatopsiaColorScheme().gray
            ]
        case .tritanopia:
            return [
                TritanopiaColorScheme().primary,
                TritanopiaColorScheme().secondary,
                TritanopiaColorScheme().success,
                TritanopiaColorScheme().warning,
                TritanopiaColorScheme().danger,
                TritanopiaColorScheme().gray
            ]
        }
    }
}
