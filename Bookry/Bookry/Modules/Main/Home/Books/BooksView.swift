//
//  BooksView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 15/08/25.
//

import SwiftUI

struct BooksView: View {
    @StateObject private var themeManager = ThemeManager.shared
    @StateObject var vm: BooksViewModel
    
    var body: some View {
        ZStack {
            themeManager.colorScheme.white
            
            VStack {
                Text("Home View")
                    .foregroundColor(themeManager.colorScheme.success)
                    .font(.bold1)
            }
        }
    }
}

#Preview {
    BooksView(vm: .init())
}
