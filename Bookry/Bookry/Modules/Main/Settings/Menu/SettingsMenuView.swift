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
        VStack {
            Text("SettingsMenu View")
                .font(.largeTitle)
            
            Button(action: vm.didTapHome, label: {
                Text("Go to Home")
            })
        }
    }
}

#Preview {
    SettingsMenuView(vm: .init())
}
