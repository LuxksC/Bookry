//
//  HomeViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol HomeViewModelable: ObservableObject {
    var navDelegate: HomeNavDelegate? { get set }
    func didTapSettings()
    func didTapLogout()
}

protocol HomeNavDelegate {
    func onLogout()
    func onSettingsTapped()
}

class HomeViewModel: BaseViewModel, HomeViewModelable {
    
    var navDelegate: HomeNavDelegate?
    
    func didTapSettings() {
        navDelegate?.onSettingsTapped()
    }
    
    func didTapLogout() {
        print("didTapLogout called")
        navDelegate?.onLogout()
    }
}
