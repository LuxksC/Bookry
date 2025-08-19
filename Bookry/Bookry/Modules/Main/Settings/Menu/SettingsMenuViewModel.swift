//
//  SettingsViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import Combine

protocol SettingsMenuViewModelable: ObservableObject {
    var navDelegate: SettingsMenuNavDelegate? { get set }
    func didTapThemes()
    func getUser()
}

protocol SettingsMenuNavDelegate: AnyObject {
    func onSettingsMenuThemesTapped()
}

class SettingsMenuViewModel: BaseViewModel, SettingsMenuViewModelable {
    @Published var user: User?
    @Published var settingsMenuItems: [SettingMenuItem] = []
    
    weak var navDelegate: (any SettingsMenuNavDelegate)?
    
    override init() {
        super.init()
        self.initiateSettingsItems()
    }
    
    func didTapThemes() {
        navDelegate?.onSettingsMenuThemesTapped()
    }
    
    // original
//    func getUser() {
//        
//    }
    
    // mocked
    func getUser() {
        
    }
    
    private func initiateSettingsItems() {
        settingsMenuItems = [
            SettingMenuItem(
                title: "Themes",
                image: "paintpalette",
                section: .account,
                action: { self.didTapThemes() }
            ),
            SettingMenuItem(
                title: "Downloads",
                image: "square.and.arrow.down",
                section: .account,
                action: { print("Downloads") }
            ),
            SettingMenuItem(
                title: "Language",
                image: "translate",
                section: .account,
                action: { print("Language") }
            ),
            SettingMenuItem(
                title: "Logout",
                image: "rectangle.portrait.and.arrow.right",
                section: .others,
                action: { print("logout user") }
            ),
        ]
    }
}
