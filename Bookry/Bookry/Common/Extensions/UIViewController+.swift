//
//  UIViewController+.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import UIKit

extension UIViewController {
    func setCustomBackButton(target: Any?, selector: Selector) {
        // Hides original back button
        navigationItem.hidesBackButton = true
        navigationItem.setHidesBackButton(true, animated: false)
        
        // Creates new back button
        let backImage = UIImage(systemName: "chevron.left")?.withTintColor(.black, renderingMode: .alwaysOriginal) // This color needs to be customized
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: target, action: selector)
        navigationItem.leftBarButtonItem = backButton
    }
}
