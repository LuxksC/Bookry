//
//  UICodableView.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit
import Combine

class UICodableView: UIView, CodableView {
    var themeManager = ThemeManager.shared
    var cancellables = Set<AnyCancellable>()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCodableView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildHierarchy() {
        preconditionFailure("Subviews were not added to the main view.")
    }
    
    func setupConstraints() {
        preconditionFailure("Constraints were not defined")
    }
    
    func setupThemeBindings() {
        preconditionFailure("Theme bindings were not set up")
    }
}
