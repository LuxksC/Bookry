//
//  ThemesHostingController.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import UIKit

class ThemesHostingController: HostingController<ThemesView, ThemesViewModel> {}

// MARK: - Lifecycle
extension ThemesHostingController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - View Setup
private extension ThemesHostingController {
    func setupView() {
        title = "Themes"
        
        setCustomBackButton(target: self, selector: #selector(onBackButtonTapped), color: UIColor(themeManager.colorScheme.black))
    }
}

// MARK: - Actions
extension ThemesHostingController {
    @objc func onBackButtonTapped() {
        viewModel.didTapBack()
    }
}
