//
//  ThemeRadioButton.swift
//  Bookry
//
//  Created by Lucas Souza on 20/08/25.
//

import SwiftUI

struct ThemeRadioButton: View {
    @StateObject private var themeManager = ThemeManager.shared
    
    @Binding var selectedTheme: ColorTheme
    var theme: ColorTheme
    
    var body: some View {
        Button(action: {}) {
            HStack(spacing: 12) {
                ZStack(alignment: .center) {
                    Circle()
                        .strokeBorder(themeManager.colorScheme.primary, lineWidth: 1.5)
                        .frame(width: 24, height: 24)
                        .animation(Animation.linear(duration: 0.1))
                    
                    Circle()
                        .fill(themeManager.colorScheme.primary)
                        .frame(width: 15, height: 15)
                        .animation(Animation.linear(duration: 0.1))
                        .opacity(theme == selectedTheme ? 1 : 0)
                }
                
                Text(theme.rawValue)
                    .font(.regular4)
                    .foregroundColor(themeManager.colorScheme.black)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

#Preview {
    ThemeRadioButton(selectedTheme: .constant(.light), theme: .light)
}
