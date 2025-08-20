//
//  SettingsCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import UIKit

protocol SettingsCoordinatorDelegate: AnyObject {
    func onSettingsCoordinatorCompletion(settingsCoordinator: SettingsCoordinator)
}

class SettingsCoordinator: BaseCoordinator<UINavigationController> {
    weak var delegate: SettingsCoordinatorDelegate?
    
    override func start() {
        showSettingsMenu()
    }
}

// MARK: - Show Views
private extension SettingsCoordinator {
    func showSettingsMenu() {
        let viewModel = SettingsMenuViewModel()
        viewModel.navDelegate = self
        let view = SettingsMenuView(vm: viewModel)
        let controller = HostingController(rootView: view, viewModel: viewModel)
        controller.title = "Settings"
        
        presenter.setViewControllers([controller], animated: true)
    }
    
    func showThemes() {
        let viewModel = ThemesViewModel()
        viewModel.navDelegate = self
        let view = ThemesView(vm: viewModel)
        let controller = ThemesHostingController(rootView: view, viewModel: viewModel)
        controller.hidesBottomBarWhenPushed = true
        
        presenter.pushViewController(controller, animated: true)

    }
}

// MARK: - SettingsMenuNavDelegate
extension SettingsCoordinator: SettingsMenuNavDelegate {
    func onSettingsMenuThemesTapped() {
        showThemes()
    }
    
    func onSettingsMenuLogoutTapped() {
        delegate?.onSettingsCoordinatorCompletion(settingsCoordinator: self)
    }
}

// MARK: - ThemesNavDelegate
extension SettingsCoordinator: ThemesNavDelegate {
    func onThemesBackTapped() {
        presenter.popViewController(animated: true)
    }
}
