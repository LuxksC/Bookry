//
//  ThemeManager.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import SwiftUI

protocol ThemeManagerProtocol {
    func apply(colorTheme: ColorTheme)
    func apply(font: BFont)
    func apply(font: BFont, colorTheme: ColorTheme)
}

class ThemeManager: ObservableObject, ThemeManagerProtocol {
    @Published private(set) var colorTheme: ColorTheme = .light
    @Published private(set) var font: BFont = .default
    
    var colorScheme: ColorScheme {
        return colorTheme.scheme
    }
    
    static let shared = ThemeManager()
    
    private init() {
        // Configutre use cached options if needed
    }
    
    func apply(colorTheme: ColorTheme) {
        self.colorTheme = colorTheme
    }
    
    func apply(font: any BFont) {
        self.font = font
    }
    
    func apply(font: any BFont, colorTheme: ColorTheme) {
        self.font = font
        self.colorTheme = colorTheme
    }
    
    func fontStyle(_ style: FontStyle) -> UIFont {
        return font.style(style)
    }
}
