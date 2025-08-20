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
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                themeManager.colorScheme.white
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Default Themes")
                        .foregroundColor(themeManager.colorScheme.black)
                        .font(.bold3)
                    
                    ThemesRadioButtonList(vm: vm, themes: vm.defaultThemes)
                    
                    Text("Daltonism Themes")
                        .foregroundColor(themeManager.colorScheme.black)
                        .font(.bold3)
                    
                    ThemesRadioButtonList(vm: vm, themes: vm.daltonismThemes)
                    
                    Button("Teste", action: {
                        print("Teste")
                    })
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, geometry.safeAreaInsets.top + 16)
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ThemesView(vm: .init())
}
