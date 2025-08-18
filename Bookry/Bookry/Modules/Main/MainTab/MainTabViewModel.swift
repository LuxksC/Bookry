//
//  MainTabViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol MainTabViewModelable {
    var navDelegate: MainTabNavDelegate? { get set }
    func didTapHome()
    func didTapSettings()
}

protocol MainTabNavDelegate {
    func onHomeTapped()
    func onSettingsTapped()
}

class MainTabViewModel: BaseViewModel, ObservableObject, MainTabViewModelable {
    
    var navDelegate: (any MainTabNavDelegate)?
    
    func didTapSettings() {
        navDelegate?.onSettingsTapped()
    }
    
    func didTapHome() {
        navDelegate?.onHomeTapped()
    }
}
