//
//  MainTabView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var vm: MainTabViewModel
    
    var body: some View {
        Text("MainTabView")
    }
}

#Preview {
    MainTabView(vm: .init())
}
