//
//  DefaultButtonStyle.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

struct DefaultButtonStyle: ButtonStyle {
    @StateObject private var themeManager = ThemeManager.shared
    
    @Environment(\.isEnabled) var isEnabled
    
    func makeBody(configuration: Configuration) -> some View {
        let disabledBackground = themeManager.colorScheme.grayLight
        let enabledBackground = themeManager.colorScheme.secondary
        
        let background = isEnabled ? enabledBackground : disabledBackground
        
        return configuration.label
            .lineLimit(nil)
            .multilineTextAlignment(.center)
            .frame(minHeight: 28)
            .padding(.all, 8)
            .frame(maxWidth: .infinity)
            .font(Font(themeManager.fontStyle(.bold6)))
            .foregroundColor(themeManager.colorScheme.white)
            .background(background)
            .clipShape(Capsule())
            
    }
}
