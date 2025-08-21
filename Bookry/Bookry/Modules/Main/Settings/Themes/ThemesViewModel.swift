//
//  ThemesViewModel.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import SwiftUI
import UIKit
import Combine


protocol ThemesViewModelable: ObservableObject {
    var navDelegate: ThemesNavDelegate? { get set }
    func didTapBack()
    func updateColorTheme(to theme: ColorTheme)
}

protocol ThemesNavDelegate: AnyObject {
    func onThemesBackTapped()
}

class ThemesViewModel: BaseViewModel, ThemesViewModelable {
    @Published var isDyslexiaFontEnabled: Bool = false
    @Published var selectedTheme: ColorTheme
    
    private var themeManager: ThemeManagerProtocol
    var cancellables = Set<AnyCancellable>()
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
    
    func setupBindings() {
        $isDyslexiaFontEnabled
            .receive(on: DispatchQueue.main)
            .sink { [weak self] isEnabled in
                guard let self else { return }
                self.themeManager.apply(font: isEnabled ? .dyslexia : .default)
            }
            .store(in: &cancellables)
    }
}
