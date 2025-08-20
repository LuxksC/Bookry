//
//  DarkColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

extension ColorScheme where Self == DarkColorScheme {
    static var dark: DarkColorScheme { .init() }
}

struct DarkColorScheme: ColorScheme {
    var black: Color = Color(hex: 0xFFFFFF) // white for text on dark backgrounds
    var danger: Color = Color(hex: 0xFF5252) // bright red for dark backgrounds
    var dangerDark: Color = Color(hex: 0xB71C1C) // deep red
    var dangerLight: Color = Color(hex: 0xFF8A80) // soft red
    var gray: Color = Color(hex: 0x757575) // medium gray for dark theme
    var grayDark: Color = Color(hex: 0x424242) // dark gray for dark theme
    var grayLight: Color = Color(hex: 0xBDBDBD) // light gray for dark theme
    var primary: Color = Color(hex: 0xB39DDB) // light purple for dark backgrounds
    var secondary: Color = Color(hex: 0xFFD54F) // light yellow for contrast
    var success: Color = Color(hex: 0x81C784) // light green for dark backgrounds
    var successDark: Color = Color(hex: 0x388E3C) // green
    var successLight: Color = Color(hex: 0xC8E6C9) // very light green
    var warning: Color = Color(hex: 0xFFD54F) // yellow for dark backgrounds
    var warningDark: Color = Color(hex: 0xFFA000) // amber
    var warningLight: Color = Color(hex: 0xFFF8E1) // very light yellow
    var white: Color = Color(hex: 0x212121) // dark gray for backgrounds
}
