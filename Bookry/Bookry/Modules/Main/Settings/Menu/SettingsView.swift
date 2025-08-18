//
//  SettingsView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 15/08/25.
//

import SwiftUI

struct SettingsView: View {
    @StateObject var vm: SettingsViewModel
    
    var body: some View {
        VStack {
            Text("Settings View")
                .font(.largeTitle)
            
            Button(action: vm.didTapHome, label: {
                Text("Go to Home")
            })
        }
    }
}

#Preview {
    SettingsView(vm: .init())
}
