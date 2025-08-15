//
//  LoginView.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

class LoginView: UICodableView {
    // MARK: - UI Components
    lazy var backgroundView: UIView = {
        let view = UIView()
//        view.backgroundColor = .purple
        view.backgroundColor = UIColor(themeManager.colorScheme.primary)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var updateThemeButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor(themeManager.colorScheme.secondary)
        button.setTitle("Update Theme", for: .normal)
        button.addTarget(nil, action: #selector(didTapUpdateTheme), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Setup
    override func buildHierarchy() {
        insertSubview(backgroundView, at: 0)
        addSubview(updateThemeButton)
    }
    
    override func setupConstraints() {
        backgroundView.constraintToSuperview()
        
        updateThemeButton.centerXAnchor(equalTo: centerXAnchor)
            .centerYAnchor(equalTo: centerYAnchor)
            .widthAnchor(equalTo: 200)
            .heightAnchor(equalTo: 50)
    }
    
    override func setupThemeBindings() {
        themeManager.$colorTheme
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newColorTheme in
                guard let self else { return }
                self.backgroundView.backgroundColor = UIColor(newColorTheme.scheme.primary)
            }
            .store(in: &cancellables)
                
    }
    
    // MARK: - Actions
    @objc private func didTapUpdateTheme() {
        let newTheme: ColorTheme = themeManager.colorTheme == .light ? .dark : .light
        themeManager.apply(colorTheme: newTheme)
    }
}
