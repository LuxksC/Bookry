//
//  SettingsMenuSection.swift
//  Bookry
//
//  Created by Lucas Souza on 19/08/25.
//

import SwiftUI

struct SettingsMenuSection: View {
    @StateObject private var themeManager = ThemeManager.shared
    
    let sectionType: SettingMenuSection
    let items: [SettingMenuItem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(sectionType.rawValue)
                .font(.bold4)
                .foregroundColor(themeManager.colorScheme.black)
            
            LazyVGrid(
                columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ],
                spacing: 16
            ) {
                ForEach(items) { item in
                    SettingsMenuCard(item: item)
                }
            }
        }
    }
}

#Preview {
    SettingsMenuSection(
        sectionType: .account,
        items: [
            SettingMenuItem(
                title: "Teste",
                image: "button.programmable",
                section: .account,
                action: {})
        ]
    )
}
