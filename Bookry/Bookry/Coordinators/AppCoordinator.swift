//
//  AppCoordinator.swift
//  Bookry
//
//  Created by Lucas Souza on 13/08/25.
//

import Foundation
import UIKit
import SwiftUI

/// This will fulfill the role of creating the main navigation controller and iniciatilizing it with the first view of the app.
/// This usually is done in AppDelegate, but since we want to use Coordinators to handle navigation, it will be done here
class AppCoordinator: BaseCoordinator<UINavigationController> {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        
        let presenter = UINavigationController() // This variable comes from BaseCoordinator
        presenter.isToolbarHidden = true
        
        super.init(presenter: presenter)
        
        self.window.rootViewController = presenter
        self.window.makeKeyAndVisible()
    }
    
    /// Show the first view of the App
    override func start() {
        startAuth()
    }
}

// MARK: - Show Views

extension AppCoordinator {
    func startAuth() {
        let authCoordinator = AuthCoordinator(presenter: presenter)
        authCoordinator.delegate = self
        authCoordinator.start()
        self.store(childCoordinator: authCoordinator)
    }
    
    func startMain() {
        let mainCoordinator = MainCoordinator(presenter: presenter)
        mainCoordinator.delegate = self
        mainCoordinator.start()
        self.store(childCoordinator: mainCoordinator)
    }
}

// MARK: - AuthCoordinatorDelegate
extension AppCoordinator: AuthCoordinatorDelegate {
    func onAuthCoordinatorCompletion(authCoordinator: AuthCoordinator) {
        self.remove(childCoordinator: authCoordinator)
        startMain()
    }
}

// MARK: - MainCoordinatorDelegate
extension AppCoordinator: MainCoordinatorDelegate {
    func onMainCoordinatorCompletion(mainCoordinator: MainCoordinator) {
        print("onMainCoordinatorCompletion called")
        self.remove(childCoordinator: mainCoordinator)
        startAuth()
    }
}
