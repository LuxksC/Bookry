//
//  FontModifier.swift
//  Bookry
//
//  Created by Lucas Souza on 19/08/25.
//

import SwiftUI

struct FontModifier: ViewModifier {
    @StateObject private var themeManager = ThemeManager.shared
    
    var style: FontStyle
    
    func body(content: Content) -> some View {
        content
            .font(Font(themeManager.fontStyle(style)))
    }
}

extension View {
    func font(_ style: FontStyle) -> some View {
        modifier(FontModifier(style: style))
    }
}
