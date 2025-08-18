//
//  LoginViewController.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

class LoginViewController: UICodableViewController<LoginView, LoginViewModelable> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupActions()
    }
    
    // MARK: - Private Methods
    private func setupNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    private func setupActions() {
        mainView.onContinueTapped = { [weak self] in
            self?.vm.didTapContinue()
        }
    }
    
}
