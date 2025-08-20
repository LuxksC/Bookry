//
//  ThemesViewModel.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import SwiftUI
import UIKit

protocol ThemesViewModelable: ObservableObject {
    var navDelegate: ThemesNavDelegate? { get set }
    func didTapBack()
    func updateColorTheme(to theme: ColorTheme)
}

protocol ThemesNavDelegate: AnyObject {
    func onThemesBackTapped()
}

class ThemesViewModel: BaseViewModel, ThemesViewModelable {
    @Published var selectedTheme: ColorTheme
    
    private var themeManager: ThemeManagerProtocol
    var defaultThemes: [ColorTheme] = [.light, .dark]
    var daltonismThemes: [ColorTheme] = [.achromatopsia, .deuteranopia, .protanopia, .tritanopia]
    
    weak var navDelegate: ThemesNavDelegate?
    
    init(themeManager: ThemeManagerProtocol = ThemeManager.shared) {
        self.themeManager = themeManager
        self.selectedTheme = themeManager.colorTheme
    }
    
    func didTapBack() {
        navDelegate?.onThemesBackTapped()
    }
    
    func updateColorTheme(to theme: ColorTheme) {
        selectedTheme = theme
        themeManager.apply(colorTheme: theme)
    }
}
