//
//  EmailTextField.swift
//  Bookry
//
//  Created by Lucas Souza on 15/08/25.
//

import UIKit

class EmailTextField: UICodableView {
    // MARK: - UI Components
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.font = themeManager.fontStyle(.regular6)
        label.textColor = UIColor(themeManager.colorScheme.white)
        label.numberOfLines = 1
        return label
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.font = themeManager.fontStyle(.regular6)
        textField.textColor = UIColor(themeManager.colorScheme.white)
        textField.layer.borderColor = UIColor(themeManager.colorScheme.white).cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.delegate = self
        return textField
    }()
    
    lazy var errorMessage: UILabel = {
        let label = UILabel()
        label.text = "E-mail inválido"
        label.textColor = UIColor(themeManager.colorScheme.dangerLight)
        label.font = themeManager.fontStyle(.regular6)
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Setup Hierarchy
    override func buildHierarchy() {
        addSubview(emailLabel)
        addSubview(textField)
        addSubview(errorMessage)
    }
    
    // MARK: - Setup Constraints
    override func setupConstraints() {
        emailLabel
            .topAnchor(equalTo: topAnchor)
            .leadingAnchor(equalTo: leadingAnchor)
            .trailingAnchor(equalTo: trailingAnchor)

        textField
            .topAnchor(equalTo: emailLabel.bottomAnchor, constant: 16)
            .leadingAnchor(equalTo: leadingAnchor)
            .trailingAnchor(equalTo: trailingAnchor)
            .heightAnchor(equalTo: 40)

        errorMessage
            .topAnchor(equalTo: textField.bottomAnchor, constant: 4)
            .leadingAnchor(equalTo: leadingAnchor)
            .trailingAnchor(equalTo: trailingAnchor)
    }
    
    // MARK: - Setup Combine Theme Bindings
    override func setupThemeBindings() {
        themeManager.$colorTheme
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newColorTheme in
                guard let self else { return }
                self.emailLabel.textColor = UIColor(newColorTheme.scheme.white)
                self.textField.textColor = UIColor(newColorTheme.scheme.white)
                self.textField.layer.borderColor = UIColor(themeManager.colorScheme.white).cgColor
                self.errorMessage.textColor = UIColor(newColorTheme.scheme.dangerLight)
            }
            .store(in: &cancellables)
        
        themeManager.$font
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newFont in
                guard let self else { return }
                self.emailLabel.font = newFont.style(.regular6)
                self.textField.font = newFont.style(.regular6)
                self.errorMessage.font = newFont.style(.regular6)
            }
            .store(in: &cancellables)
            
                
    }
}

extension EmailTextField: UITextFieldDelegate {
    
}
