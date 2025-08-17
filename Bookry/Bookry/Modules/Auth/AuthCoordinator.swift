//
//  AuthCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import UIKit

class AuthCoordinator: BaseCoordinator<UINavigationController> {
    override func start() {
        showLoginView()
    }
}

// MARK: - Show Views
extension AuthCoordinator {
    private func showLoginView() {
        let view = LoginView()
        let viewModel = LoginViewModel()
        viewModel.navDelegate = self
        
        let controller = LoginViewController(mainView: view, viewModel: viewModel)
        
        presenter.setViewControllers([controller], animated: false)
    }
}

// MARK: - LoginNavDelegate
extension AuthCoordinator: LoginViewModelNavDelegate {
    func onLogin() {
        print("Go to home screen")
    }
}
