//
//  MainCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import UIKit
import SwiftUI

protocol MainCoordinatorDelegate: AnyObject {
    /// Comunicate with App Coordinator to start Auth flow
    func onMainCoordinatorCompletion(mainCoordinator: MainCoordinator)
}

enum TabBarTag: Int {
    case home
    case settings
}

class MainCoordinator: BaseCoordinator<UINavigationController> {
    weak var delegate: MainCoordinatorDelegate?
    
    override func start() {
        showTabView()
    }
}

// MARK: - Show Views
extension MainCoordinator {
    private func showTabView() {
        let homeCoordinator = configHomeCoordinator()
        let settingsCoordinator = configSettingsCoordinator()
        
        /// The advantage of adding the presenter here is that when we change to a specific tab
        /// it will show the view controller that was on top of the stack the last time we were on that tab
        /// and not the first view controller of the stack.
        let controllers = [
            homeCoordinator.presenter,
            settingsCoordinator.presenter
        ]
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(controllers, animated: false)
        
        presenter.setViewControllers([tabBarController], animated: true)
        // Some people here would do 'presenter = tabBarController',
        // but doing this would make we lost the AppCoordinator flow
        // and so, we would not be able to go back to the AppCoordinator
        // flow using the presenter
    }
}

// MARK: - Sub Coordinators
private extension MainCoordinator {
    func configHomeCoordinator() -> HomeCoordinator {
        /// The MainCoordinator will provide a separeted presenter for the sub coordinators inside of it
        /// This way we prevent problems of comunication between the MainCoordinator presenter and
        /// its subcoordinators presenters
        let flowPresenter = UINavigationController()
        flowPresenter.tabBarItem = UITabBarItem(
            title: "Books",
            image: UIImage(systemName: "book"),
            tag: TabBarTag.home.rawValue
        )
        
        let coordinator = HomeCoordinator(presenter: flowPresenter)
        coordinator.delegate = self
        coordinator.start()
        
        store(childCoordinator: coordinator)
        return coordinator
    }
    
    func configSettingsCoordinator() -> SettingsCoordinator {
        let flowPresenter = UINavigationController()
        flowPresenter.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gearshape"),
            tag: TabBarTag.settings.rawValue
        )
        
        let coordinator = SettingsCoordinator(presenter: flowPresenter)
        coordinator.delegate = self
        coordinator.start()
        
        store(childCoordinator: coordinator)
        return coordinator
    }
}

// MARK: - HomeCoordinatorDelegate
extension MainCoordinator: HomeCoordinatorDelegate {
    func onHomeCoordinatorCompletion(homeCoordinator: HomeCoordinator) {
        print("Home Coordinator Completed")
        remove(childCoordinator: homeCoordinator)
    }
}

// MARK: - SettingsCoordinatorDelegate
extension MainCoordinator: SettingsCoordinatorDelegate {
    func onSettingsCoordinatorCompletion(settingsCoordinator: SettingsCoordinator) {
        delegate?.onMainCoordinatorCompletion(mainCoordinator: self)
        remove(childCoordinator: settingsCoordinator)
    }
}
