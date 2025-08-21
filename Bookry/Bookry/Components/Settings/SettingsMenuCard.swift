//
//  SettingMenuCard.swift
//  Bookry
//
//  Created by Lucas Souza on 19/08/25.
//

import SwiftUI

struct SettingsMenuCard: View {
    @StateObject private var themeManager = ThemeManager.shared
    
    let item: SettingMenuItem
    
    var body: some View {
        Button(action: item.action) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(themeManager.colorScheme.primary, lineWidth: 2)
                
                VStack(alignment: .leading, spacing: 32) {
                    Image(systemName: item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                        .tint(themeManager.colorScheme.primary)
                    
                    Text(item.title)
                        .font(.bold5)
                        .foregroundColor(themeManager.colorScheme.primary)
                }
                .padding()
            }
        }
    }
}

#Preview {
    SettingsMenuCard(
        item: SettingMenuItem(
            title: "Teste",
            image: "button.programmable",
            section: .account,
            action: {}
        )
    )
}
