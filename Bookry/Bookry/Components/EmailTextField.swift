//
//  EmailTextField.swift
//  Bookry
//
//  Created by Lucas Souza on 15/08/25.
//

import UIKit

class EmailTextField: UICodableView {
    var tapAction: (() -> Void)?
    
    var hasText: Bool {
        textField.hasText
    }
    
    public var text: String? {
        get { return textField.text }
        set {
            textField.text = newValue
            didChangeText()
        }
    }
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupCodableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - UI Components
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.font = themeManager.fontStyle(.regular8)
        label.textColor = UIColor(themeManager.colorScheme.white)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.font = themeManager.fontStyle(.regular6)
        textField.textColor = UIColor(themeManager.colorScheme.white)
        textField.backgroundColor = .clear
        textField.borderStyle = .none
        textField.delegate = self
        textField.keyboardType = .emailAddress
        textField.layer.masksToBounds = true
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var bottomBorder: UIView = {
        let border = UIView()
        border.backgroundColor = UIColor(themeManager.colorScheme.white)
        return border
    }()
    
    lazy var errorMessage: UILabel = {
        let label = UILabel()
        label.text = "E-mail inválido"
        label.textColor = UIColor(themeManager.colorScheme.dangerLight)
        label.font = themeManager.fontStyle(.regular8)
        label.numberOfLines = 0
        label.isHidden = true
        return label
    }()
    
    // MARK: - Setup Hierarchy
    override func buildHierarchy() {
        addSubview(emailLabel)
        addSubview(textField)
        addSubview(bottomBorder)
        addSubview(errorMessage)
    }
    
    // MARK: - Setup Constraints
    override func setupConstraints() {
        emailLabel
            .topAnchor(equalTo: topAnchor)
            .leadingAnchor(equalTo: leadingAnchor)
            .trailingAnchor(equalTo: trailingAnchor)

        textField
            .topAnchor(equalTo: emailLabel.bottomAnchor, constant: 2)
            .leadingAnchor(equalTo: leadingAnchor)
            .trailingAnchor(equalTo: trailingAnchor)
            .heightAnchor(equalTo: 30)
        
        bottomBorder
            .topAnchor(equalTo: textField.bottomAnchor)
            .leadingAnchor(equalTo: textField.leadingAnchor)
            .trailingAnchor(equalTo: textField.trailingAnchor)
            .heightAnchor(equalTo: 1)
            

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
                self.bottomBorder.backgroundColor = UIColor(newColorTheme.scheme.white)
                self.errorMessage.textColor = UIColor(newColorTheme.scheme.dangerLight)
            }
            .store(in: &cancellables)
        
        themeManager.$font
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newFont in
                guard let self else { return }
                self.emailLabel.font = newFont.style(.regular8)
                self.textField.font = newFont.style(.regular6)
                self.errorMessage.font = newFont.style(.regular8)
            }
            .store(in: &cancellables)
    }
    
    private func didChangeText() {
        let isTextEmpty = text?.isEmpty ?? true
        
        emailLabel.isHidden = isTextEmpty
        errorMessage.isHidden = text?.isValidEmail() ?? true
    }
}

extension EmailTextField: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        didChangeText()
    }
}
