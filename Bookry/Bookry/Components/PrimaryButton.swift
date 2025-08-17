//
//  PrimaryButton.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var action: (() -> Void)
    
    var body: some View {
        Button(action: action) {
            Text(text)
        }
        .buttonStyle(DefaultButtonStyle())
    }
}

#Preview {
    PrimaryButton(text: "Primary Button", action: {})
}
