//
//  ThemesRadioButtonList.swift
//  Bookry
//
//  Created by Lucas Souza on 20/08/25.
//

import SwiftUI

struct ThemesRadioButtonList: View {
    @StateObject var vm: ThemesViewModel
    let themes: [ColorTheme]
    
    var body: some View {
        ForEach(themes, id: \.self) { theme in
            Button(action: {
                vm.updateColorTheme(to: theme)
            }) {
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())],
                    alignment: .leading
                ) {
                    ThemeRadioButton(selectedTheme: $vm.selectedTheme, theme: theme)
                    
                    HStack(spacing: 0) {
                        ForEach(theme.colorPreviewPalette) { paletteColor in
                            paletteColor.color.frame(width: 24, height: 24)
                        }
                        
                    }
                    .cornerRadius(4)
                }
            }
        }
    }
}

#Preview {
    ThemesRadioButtonList(vm: .init(), themes: [])
}
