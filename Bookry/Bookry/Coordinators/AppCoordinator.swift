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
    
    /// Shows the first view of the App
    override func start() {
        startAuth()
    }
}

// MARK: - Show Views

extension AppCoordinator {
    func startAuth() {
        let controller = LoginViewController(mainView: LoginView())
        presenter.setViewControllers([controller], animated: false)
    }
}
