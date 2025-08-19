//
//  HostingController.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import UIKit
import Combine

class HostingController<Content: View, VM: BaseViewModel>: UIHostingController<Content> {
    var themeManager = ThemeManager.shared
    var cancellables = Set<AnyCancellable>()
    var viewModel: VM
    
    init(rootView: Content, viewModel: VM) {
        self.viewModel = viewModel
        super.init(rootView: rootView)
        viewModel.hostingController = self
        setupNavBarAppearance(
            backgroundColor: UIColor(themeManager.colorScheme.white),
            foregroundColor: UIColor(themeManager.colorScheme.black)
        )
        setupTabBarAppearance(
            backgroundColor: UIColor(themeManager.colorScheme.white),
            selectedColor: UIColor(themeManager.colorScheme.secondary),
            disabledColor: UIColor(themeManager.colorScheme.gray)
        )
        setupThemeBindings()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Theme Bindings
extension HostingController {
    private func setupThemeBindings() {
        themeManager.$colorTheme
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newColorTheme in
                guard let self else { return }
                self.setupNavBarAppearance(
                    backgroundColor: UIColor(themeManager.colorScheme.white),
                    foregroundColor: UIColor(themeManager.colorScheme.black)
                )
                self.setupTabBarAppearance(
                    backgroundColor: UIColor(themeManager.colorScheme.white),
                    selectedColor: UIColor(themeManager.colorScheme.secondary),
                    disabledColor: UIColor(themeManager.colorScheme.gray)
                )
            }
            .store(in: &cancellables)
    }
}
