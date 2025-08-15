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
        label.font = themeManager.fontStyle(.bold4)
        label.textColor = UIColor(themeManager.colorScheme.white)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var emailTextField: EmailTextField = {
        let field = EmailTextField()
        return field
    }()
    
    lazy var updateThemeButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor(themeManager.colorScheme.secondary)
        button.setTitle("Update Theme", for: .normal)
        button.addTarget(nil, action: #selector(didTapUpdateTheme), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Setup Hirearchy
    override func buildHierarchy() {
        insertSubview(backgroundView, at: 0)
        addSubview(updateThemeButton)
        addSubview(logoImage)
        addSubview(title)
        addSubview(emailTextField)
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
        
        updateThemeButton.centerXAnchor(equalTo: centerXAnchor)
            .centerYAnchor(equalTo: centerYAnchor)
            .widthAnchor(equalTo: 200)
            .heightAnchor(equalTo: 50)
    }
    
    // MARK: - Setup Combine Theme Bindings
    override func setupThemeBindings() {
        themeManager.$colorTheme
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newColorTheme in
                guard let self else { return }
                self.backgroundView.backgroundColor = UIColor(newColorTheme.scheme.primary)
                self.logoImage.tintColor = UIColor(newColorTheme.scheme.secondary)
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
}
