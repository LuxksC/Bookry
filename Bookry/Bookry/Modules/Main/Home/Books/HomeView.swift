//
//  HomeView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 15/08/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm: HomeViewModel
    
    var body: some View {
        VStack {
            Text("Home View")
                .font(.largeTitle)
            
            Button(action: vm.didTapSettings, label: {
                Text("Go to Settings")
            })
            
            Button(action: vm.didTapLogout, label: {
                Text("Logout User")
            })
        }
    }
}

#Preview {
    HomeView(vm: .init())
}
