//
//  LoginViewController.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

class LoginViewController: UICodableViewController<LoginView> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    // MARK: - Private Methods
    private func setupNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}
