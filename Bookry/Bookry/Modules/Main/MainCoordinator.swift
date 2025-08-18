//
//  MainCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import UIKit
import SwiftUI

protocol MainCoordinatorDelegate: AnyObject {
    func onMainCoordinatorCompletion(mainCoordinator: MainCoordinator)
}

enum MainTabViewShowing {
    case home
    case settings
}

class MainCoordinator: BaseCoordinator<UINavigationController> {
    weak var delegate: MainCoordinatorDelegate?
    
    override func start() {
//        showTabView()
        showHome()
    }
}

// MARK: - Show Views
extension MainCoordinator {
    private func showTabView() {
        let view = MainTabView(vm: MainTabViewModel())
        view.vm.navDelegate = self
        let controller = UIHostingController(rootView: view)
        
        presenter.setViewControllers([controller], animated: false)
    }
}

//MARK: - Show SubViews
extension MainCoordinator {
    private func showHome() {
        let view = HomeView(vm: HomeViewModel())
        view.vm.navDelegate = self
        let controller = UIHostingController(rootView: view)
        
        presenter.setViewControllers([controller], animated: false)
    }
    
    private func showSettings() {
        let view = SettingsView(vm: SettingsViewModel())
        view.vm.navDelegate = self
        let controller = UIHostingController(rootView: view)
        
        presenter.setViewControllers([controller], animated: false)
    }
}

// MARK: - MainTabDelegate
extension MainCoordinator: MainTabNavDelegate {}

// MARK: - HomeNavDelegate
extension MainCoordinator: HomeNavDelegate {
    func onLogout() {
        print("MainCoordinator onLogout called")
        delegate?.onMainCoordinatorCompletion(mainCoordinator: self)
    }
    
    func onSettingsTapped() {
        showSettings()
    }
}

// MARK: - SettingsNavDelegate
extension MainCoordinator: SettingsNavDelegate {
    func onHomeTapped() {
        showHome()
    }
    
    func onThemesTapped() {
        print("onThemesTapped called")
    }
}
