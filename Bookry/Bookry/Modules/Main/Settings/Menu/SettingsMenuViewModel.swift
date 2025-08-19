//
//  SettingsViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol SettingsMenuViewModelable: ObservableObject {
    var navDelegate: SettingsMenuNavDelegate? { get set }
    func didTapThemes()
}

protocol SettingsMenuNavDelegate: AnyObject {
    func onSettingsMenuThemesTapped()
}

class SettingsMenuViewModel: BaseViewModel, SettingsMenuViewModelable {
    
    weak var navDelegate: (any SettingsMenuNavDelegate)?
    
    func didTapThemes() {
        navDelegate?.onSettingsMenuThemesTapped()
    }
}
