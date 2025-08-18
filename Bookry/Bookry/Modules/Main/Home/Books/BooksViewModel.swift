//
//  BooksViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol BooksViewModelable: ObservableObject {
    var navDelegate: BooksNavDelegate? { get set }
    func didTapSettings()
    func didTapLogout()
}

protocol BooksNavDelegate {
    func onLogout()
    func onSettingsTapped()
}

class BooksViewModel: BaseViewModel, BooksViewModelable {
    
    var navDelegate: BooksNavDelegate?
    
    func didTapSettings() {
        navDelegate?.onSettingsTapped()
    }
    
    func didTapLogout() {
        print("didTapLogout called")
        navDelegate?.onLogout()
    }
}
