//
//  ColorTheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import SwiftUI

struct PaletteColor: Identifiable {
    let id = UUID()
    let color: Color
}

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
    
    var colorPreviewPalette: [PaletteColor] {
        switch self {
        case .light:
            return [
                PaletteColor(color: LightColorScheme().primary),
                PaletteColor(color: LightColorScheme().secondary),
                PaletteColor(color: LightColorScheme().success),
                PaletteColor(color: LightColorScheme().warning),
                PaletteColor(color: LightColorScheme().danger),
                PaletteColor(color: LightColorScheme().gray)
            ]
        case .dark:
            return [
                PaletteColor(color: DarkColorScheme().primary),
                PaletteColor(color: DarkColorScheme().secondary),
                PaletteColor(color: DarkColorScheme().success),
                PaletteColor(color: DarkColorScheme().warning),
                PaletteColor(color: DarkColorScheme().danger),
                PaletteColor(color: DarkColorScheme().gray)
            ]
        case .deuteranopia:
            return [
                PaletteColor(color: DeuteranopiaColorScheme().primary),
                PaletteColor(color: DeuteranopiaColorScheme().secondary),
                PaletteColor(color: DeuteranopiaColorScheme().success),
                PaletteColor(color: DeuteranopiaColorScheme().warning),
                PaletteColor(color: DeuteranopiaColorScheme().danger),
                PaletteColor(color: DeuteranopiaColorScheme().gray)
            ]
        case .protanopia:
            return [
                PaletteColor(color: ProtanopiaColorScheme().primary),
                PaletteColor(color: ProtanopiaColorScheme().secondary),
                PaletteColor(color: ProtanopiaColorScheme().success),
                PaletteColor(color: ProtanopiaColorScheme().warning),
                PaletteColor(color: ProtanopiaColorScheme().danger),
                PaletteColor(color: ProtanopiaColorScheme().gray)
            ]
        case .achromatopsia:
            return [
                PaletteColor(color: AchromatopsiaColorScheme().primary),
                PaletteColor(color: AchromatopsiaColorScheme().secondary),
                PaletteColor(color: AchromatopsiaColorScheme().success),
                PaletteColor(color: AchromatopsiaColorScheme().warning),
                PaletteColor(color: AchromatopsiaColorScheme().danger),
                PaletteColor(color: AchromatopsiaColorScheme().gray)
            ]
        case .tritanopia:
            return [
                PaletteColor(color: TritanopiaColorScheme().primary),
                PaletteColor(color: TritanopiaColorScheme().secondary),
                PaletteColor(color: TritanopiaColorScheme().success),
                PaletteColor(color: TritanopiaColorScheme().warning),
                PaletteColor(color: TritanopiaColorScheme().danger),
                PaletteColor(color: TritanopiaColorScheme().gray)
            ]
        }
    }
}
