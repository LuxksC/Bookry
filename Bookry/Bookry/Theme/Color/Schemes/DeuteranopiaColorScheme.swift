//  DeuteranopiaColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 19/08/25.
//
import Foundation
import SwiftUI

extension ColorScheme where Self == DeuteranopiaColorScheme {
    static var deuteranopia: DeuteranopiaColorScheme { .init() }
}

struct DeuteranopiaColorScheme: ColorScheme {
    var black: Color = Color(hex: 0x000000)
    var danger: Color = Color(hex: 0xD32F2F) // strong red
    var dangerDark: Color = Color(hex: 0xB71C1C) // deep red
    var dangerLight: Color = Color(hex: 0xFFCDD2) // light red
    var gray: Color = Color(hex: 0x888888) // neutral gray
    var grayDark: Color = Color(hex: 0x444444) // dark gray
    var grayLight: Color = Color(hex: 0xCCCCCC) // light gray
    var primary: Color = Color(hex: 0x1976D2) // blue, accessible for deuteranopia
    var secondary: Color = Color(hex: 0xE07A5F) // orange, accessible for deuteranopia
    var success: Color = Color(hex: 0x1976D2) // blue for success
    var successDark: Color = Color(hex: 0x0D47A1) // dark blue
    var successLight: Color = Color(hex: 0x64B5F6) // light blue
    var warning: Color = Color(hex: 0xFFA000) // amber
    var warningDark: Color = Color(hex: 0xFF6F00) // dark amber
    var warningLight: Color = Color(hex: 0xFFE082) // light yellow
    var white: Color = Color(hex: 0xFFFFFF)
}
