//
//  AuthCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import UIKit

protocol AuthCoordinatorDelegate: AnyObject {
    func onAuthCoordinatorCompletion(authCoordinator: AuthCoordinator)
}

class AuthCoordinator: BaseCoordinator<UINavigationController> {
    weak var delegate: AuthCoordinatorDelegate?
    
    override func start() {
        showLoginView()
    }
}

// MARK: - Show Views
private extension AuthCoordinator {
    private func showLoginView() {
        let view = LoginView()
        let viewModel = LoginViewModel()
        viewModel.navDelegate = self
        
        let controller = LoginViewController(mainView: view, viewModel: viewModel)
        
        presenter.setViewControllers([controller], animated: true)
    }
}

// MARK: - LoginNavDelegate
extension AuthCoordinator: LoginViewModelNavDelegate {
    func onLogin() {
        delegate?.onAuthCoordinatorCompletion(authCoordinator: self)
    }
}
