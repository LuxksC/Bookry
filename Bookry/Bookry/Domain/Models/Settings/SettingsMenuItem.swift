//
//  SettingsMenuItem.swift
//  Bookry
//
//  Created by Lucas Souza on 19/08/25.
//

import Foundation

enum SettingMenuSection: String {
    case account = "Account Configuration"
    case others = "Others"
}

struct SettingMenuItem: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let section: SettingMenuSection
    let action: (() -> Void)
}
