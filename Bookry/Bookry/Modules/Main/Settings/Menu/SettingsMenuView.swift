//
//  SettingsMenuView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 15/08/25.
//

import SwiftUI

struct SettingsMenuView: View {
    @StateObject private var themeManager = ThemeManager.shared
    @StateObject var vm: SettingsMenuViewModel
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                themeManager.colorScheme.white
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 32) {
                        
                        header
                        
                        SettingsMenuSection(
                            sectionType: .account,
                            items: vm.settingsMenuItems.filter { $0.section == .account}
                        )
                        
                        SettingsMenuSection(
                            sectionType: .others,
                            items: vm.settingsMenuItems.filter { $0.section == .others}
                        )
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top + 16)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                }
            }
            .ignoresSafeArea()
        }
    }
    
    @ViewBuilder
    var header: some View {
        HStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(themeManager.colorScheme.grayLight)
                .background(themeManager.colorScheme.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(
                    themeManager.colorScheme.primary,
                    lineWidth: 4)
                )
            
            VStack(alignment: .leading) {
                Text(vm.user?.name ?? "Teste de teste teste")
                    .font(.bold5)
                    .foregroundColor(themeManager.colorScheme.black)
                
                Text(vm.user?.phone ?? "(21) 99999-9999")
                    .font(.regular5)
                    .foregroundColor(themeManager.colorScheme.black)
            }
            
            Spacer()
        }
    }
}

#Preview {
    SettingsMenuView(vm: .init())
}


