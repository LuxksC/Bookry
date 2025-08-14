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

    var appCoordinator: AppCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let appWindow = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(window: appWindow)
        appCoordinator.start()
        
        return true
    }
}

