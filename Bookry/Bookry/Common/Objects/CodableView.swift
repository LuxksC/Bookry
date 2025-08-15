//
//  CodableView.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

protocol CodableView {
    /// Insert subviews inside the main contentView of a UIView and other views inside its subviews
    /// Exxample:
    /// func buildHierarchy() {
    ///     insertSubview(backgroudView, at: 0)
    ///     contentView.addSubview(headerView)
    ///     contentView.addSubview(descriptionLabel)
    ///     contentView.addSubview(textsContainerView)
    /// }
    func buildHierarchy()
    
    /// Define constraints from all subviews
    /// Example:
    /// func setupConstraints() {
    ///     backgroudView.constraintToSuperview()
    ///
    ///     headerView
    ///         .leadingAnchor(equalTo: contentView.leadingAnchor)
    ///         .topAnchor(equalTo: contentView.topAnchor, constant: 24)
    ///         .trailingAnchor(equalTo: contentView.trailingAnchor)
    ///         ...
    /// }
    func setupConstraints()
    
    /// Run any setup function from subviews
    /// Example:
    /// func setupViews() {
    ///     headerView.setup(with: "Login", titleColor: DS.Colors.Paletts.third._600)
    /// }
    func setupViews()
    
    /// Setup theme bindings using Combine to update the view when the theme changes
    /// Example:
    /// func setupThemeBindings() {
    ///    themeManager.$colorScheme
    ///     .receive(on: DispatchQueue.main)
    ///     .sink { [weak self] newColorScheme in
    ///         self?.backgroundView.backgroundColor = UIColor(newColorScheme.primary)
    ///     }
    ///     .store(in: &cancellables)
    ///}
    func setupThemeBindings()
}

extension CodableView {
    func setupViews() {}
    
    func setupCodableView() {
        buildHierarchy()
        setupConstraints()
        setupViews()
        setupThemeBindings()
    }
}
