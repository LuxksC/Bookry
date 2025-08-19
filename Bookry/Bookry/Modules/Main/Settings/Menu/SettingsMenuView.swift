//
//  SettingsMenuView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 15/08/25.
//

import SwiftUI

struct SettingsMenuView: View {
    @StateObject var vm: SettingsMenuViewModel
    
    var body: some View {
        VStack(spacing: 32) {
            Text("SettingsMenu View")
                .font(.largeTitle)
            
            Button(action: vm.didTapThemes, label: {
                Text("Go to Themes")
            })
        }
    }
}

#Preview {
    SettingsMenuView(vm: .init())
}
