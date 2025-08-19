//
//  ThemesView.swift
//  Bookry
//
//  Created by Lucas Souza on 18/08/25.
//

import SwiftUI

struct ThemesView: View {
    
    @StateObject var vm: ThemesViewModel
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Themes View")
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ThemesView(vm: .init())
}
