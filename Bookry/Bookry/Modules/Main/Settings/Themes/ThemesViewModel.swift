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
}

protocol ThemesNavDelegate: AnyObject {
    func onThemesBackTapped()
}

class ThemesViewModel: BaseViewModel, ThemesViewModelable {
    weak var navDelegate: ThemesNavDelegate?
    
    func didTapBack() {
        navDelegate?.onThemesBackTapped()
    }
}
