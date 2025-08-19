//
//  BooksView.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 15/08/25.
//

import SwiftUI

struct BooksView: View {
    @StateObject var vm: BooksViewModel
    
    var body: some View {
        VStack {
            Text("Home View")
                .font(.largeTitle)
            
            Button(action: vm.didTapLogout, label: {
                Text("Logout User")
            })
        }
    }
}

#Preview {
    BooksView(vm: .init())
}
