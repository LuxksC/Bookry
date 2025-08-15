//
//  DarkColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

struct DarkColorScheme: ColorScheme {
    var black: Color = Color(hex: 0xFFFFFF) // white for text on dark backgrounds
    var danger: Color = Color(hex: 0xFF5252) // bright red for dark backgrounds
    var dangerDark: Color = Color(hex: 0xB71C1C) // deep red
    var dangerLight: Color = Color(hex: 0xFF8A80) // soft red
    var primary: Color = Color(hex: 0xB39DDB) // light purple for dark backgrounds
    var secondary: Color = Color(hex: 0xFFD54F) // light yellow for contrast
    var white: Color = Color(hex: 0x212121) // dark gray for backgrounds
}
