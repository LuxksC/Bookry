//
//  ThemesView.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import SwiftUI

struct ThemesView: View {
    @StateObject private var themeManager = ThemeManager.shared
    @StateObject var vm: ThemesViewModel
    
    var body: some View {
        ZStack {
            themeManager.colorScheme.white
            
            VStack(spacing: 32) {
                Text("Themes View")
                    .foregroundColor(themeManager.colorScheme.black)
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

#Preview {
    ThemesView(vm: .init())
}
