//
//  LightColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import SwiftUI

extension ColorScheme where Self == LightColorScheme {
    static var light: LightColorScheme { .init() }
}

struct LightColorScheme: ColorScheme {
    var black: Color = Color(hex: 0x000000)
    var danger: Color = Color(hex: 0xD32F2F) // strong red, visible on purple
    var dangerDark: Color = Color(hex: 0xB71C1C) // deep red
    var dangerLight: Color = Color(hex: 0xFFCDD2) // light red/pink
    var gray: Color = Color(hex: 0x757575) // neutral gray, distinct from green and other tones
    var grayDark: Color = Color(hex: 0x616161) // darker gray, not as dark as black
    var grayLight: Color = Color(hex: 0xE0E0E0) // lighter gray, distinct from white and pink
    var primary: Color = Color(hex: 0x542583)
    var secondary: Color = Color(hex: 0xFDB827)
    var success: Color = Color(hex: 0x388E3C) // green
    var successDark: Color = Color(hex: 0x1B5E20) // dark green
    var successLight: Color = Color(hex: 0xC8E6C9) // light green
    var warning: Color = Color(hex: 0xFFA000) // amber
    var warningDark: Color = Color(hex: 0xFF6F00) // dark amber
    var warningLight: Color = Color(hex: 0xFFE082) // light yellow
    var white: Color = Color(hex: 0xFFFFFF)
}
