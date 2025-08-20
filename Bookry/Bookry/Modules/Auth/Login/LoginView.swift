//
//  LoginView.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit
import SwiftUI

class LoginView: UICodableView {
    // MARK: Public Actions
    var onContinueTapped: (() -> Void)?
    
    // MARK: - UI Components
    lazy var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(themeManager.colorScheme.primary)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "books.vertical.circle")
        image.tintColor = UIColor(themeManager.colorScheme.secondary)
        return image
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.text = "Entre com sua conta Bookry e acesse seus livros"
        label.font = themeManager.fontStyle(.bold3)
        label.textColor = UIColor(themeManager.colorScheme.white)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var continueButton: UIView = {
        let hostingController = UIHostingController(
            rootView: PrimaryButton(text: "Teste", action: didTapContinue)
            .environment(themeManager)
        )
        let view = hostingController.view! // fix
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var emailTextField: EmailTextField = {
        let textField = EmailTextField()
        return textField
    }()
    
    // MARK: - Setup Hirearchy
    override func buildHierarchy() {
        insertSubview(backgroundView, at: 0)
        addSubview(continueButton)
        addSubview(logoImage)
        addSubview(title)
        addSubview(emailTextField) // Add the text field to the hierarchy
    }
    
    // MARK: - Setup Constraints
    override func setupConstraints() {
        backgroundView.constraintToSuperview()
        
        logoImage
            .topAnchor(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16)
            .leadingAnchor(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16)
            .widthAnchor(equalTo: 100)
            .heightAnchor(equalTo: 100)
        
        title
            .topAnchor(equalTo: logoImage.bottomAnchor, constant: 16)
            .leadingAnchor(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16)
            .trailingAnchor(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
        
        emailTextField
            .topAnchor(equalTo: title.bottomAnchor, constant: 16)
            .leadingAnchor(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16)
            .trailingAnchor(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
            .heightAnchor(equalTo: 60)
        
        continueButton
            .topAnchor(equalTo: emailTextField.bottomAnchor, constant: 16)
            .leadingAnchor(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16)
            .trailingAnchor(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
            
    }
    
    // MARK: - Setup Combine Theme Bindings
    override func setupThemeBindings() {
        themeManager.$colorTheme
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newColorTheme in
                guard let self else { return }
                self.backgroundView.backgroundColor = UIColor(newColorTheme.scheme.primary)
                self.logoImage.tintColor = UIColor(newColorTheme.scheme.secondary)
                self.title.textColor = UIColor(newColorTheme.scheme.white)
            }
            .store(in: &cancellables)
        
        themeManager.$font
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newFont in
                guard let self else { return }
                self.title.font = newFont.style(.bold4)
            }
            .store(in: &cancellables)
    }
    
    // MARK: - Actions
    
    @objc private func didTapUpdateTheme() {
        let newTheme: ColorTheme = themeManager.colorTheme == .light ? .dark : .light
        themeManager.apply(colorTheme: newTheme)
    }
    
    @objc private func didTapContinue() {
        onContinueTapped?()
    }
}
