//
//  AppDelegate.swift
//  Bookry
//
//  Created by Lucas Souza on 13/08/25.
//

import UIKit
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let view = RootView()
        let controller = UIHostingController(rootView: view)
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = controller
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

