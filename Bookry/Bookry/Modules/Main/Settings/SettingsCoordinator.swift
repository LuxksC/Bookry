//
//  SettingsCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import UIKit

class SettingsCoordinator: BaseCoordinator<UINavigationController> {
    override func start() {
        showSettingsMenu()
    }
}

// MARK: - Show Views
private extension SettingsCoordinator {
    func showSettingsMenu() {
        let viewModel = SettingsMenuViewModel()
        let view = SettingsMenuView(vm: viewModel)
        let controller = UIHostingController(rootView: view)
        
        presenter.setViewControllers([controller], animated: true)
    }
}
