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
    var primary: Color = Color(hex: 0x542583)
    var secondary: Color = Color(hex: 0xFDB827)
    var black: Color = Color(hex: 0x000000)
    var white: Color = Color(hex: 0xFFFFFF)
}
