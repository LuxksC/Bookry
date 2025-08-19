//
//  UIViewController+.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import UIKit

// MARK: - Set Back Button
extension UIViewController {
    func setCustomBackButton(target: Any?, selector: Selector, color: UIColor) {
        // Hides original back button
        navigationItem.hidesBackButton = true
        navigationItem.setHidesBackButton(true, animated: false)
        
        // Creates new back button
        let backImage = UIImage(systemName: "chevron.left")?.withTintColor(color, renderingMode: .alwaysOriginal) // This color needs to be customized
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: target, action: selector)
        navigationItem.leftBarButtonItem = backButton
    }
}

// MARK: - Set Nav Bar
extension UIViewController {
    func setupNavBarAppearance(backgroundColor: UIColor, foregroundColor: UIColor) {
        let appearance = UINavigationBarAppearance()
        
        // background color
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backgroundColor
        
        //title color
        appearance.titleTextAttributes = [ .foregroundColor: foregroundColor ]
        
        // largeTitle color
        appearance.largeTitleTextAttributes = [ .foregroundColor: foregroundColor ]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}

// MARK: - Set Tab Bar
extension UIViewController {
    func setupTabBarAppearance(backgroundColor: UIColor, selectedColor: UIColor, disabledColor: UIColor) {
        // - Set Tab BarAppearance
        let appearance = UITabBarAppearance()
        
        // background
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backgroundColor
        
        // selected items color
        appearance.stackedLayoutAppearance.selected.iconColor = selectedColor
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: selectedColor]
        
        // disabled icons color
        appearance.stackedLayoutAppearance.normal.iconColor = disabledColor
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: disabledColor]
        
        UITabBar.appearance().standardAppearance = appearance
    }
}
