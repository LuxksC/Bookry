//
//  SettingsViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol SettingsViewModelable: ObservableObject {
    var navDelegate: SettingsNavDelegate? { get set }
    func didTapHome()
    func didTapThemes()
}

protocol SettingsNavDelegate {
    func onThemesTapped()
    func onHomeTapped()
}

class SettingsViewModel: BaseViewModel, SettingsViewModelable {
    
    var navDelegate: (any SettingsNavDelegate)?
    
    func didTapHome() {
        navDelegate?.onHomeTapped()
    }
    
    func didTapThemes() {
        print("didTapThemes called")
        navDelegate?.onThemesTapped()
    }
}
