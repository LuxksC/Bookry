//
//  PrimaryButton.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

struct PrimaryButton: View {
    @StateObject private var themeManager = ThemeManager.shared
    
    var text: String
    var action: (() -> Void)
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.bold5)
                .foregroundColor(themeManager.colorScheme.white)
                
        }
        .buttonStyle(DefaultButtonStyle())
    }
}

#Preview {
    PrimaryButton(text: "Primary Button", action: {})
}
