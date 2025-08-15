//
//  ThemeManager.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation

protocol ThemeManagerProtocol {
    func apply(colorTheme: ColorTheme)
}

class ThemeManager: ObservableObject {
    @Published private(set) var colorTheme: ColorTheme = .light
    
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
}
