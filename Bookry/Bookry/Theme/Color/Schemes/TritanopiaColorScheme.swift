//
//  TritanopiaColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

struct TritanopiaColorScheme: ColorScheme {
    var black: Color = Color(hex: 0x000000)
    var danger: Color = Color(hex: 0xD32F2F) // strong red
    var dangerDark: Color = Color(hex: 0xB71C1C) // deep red
    var dangerLight: Color = Color(hex: 0xFFCDD2) // light red
    var primary: Color = Color(hex: 0x542583) // purple, distinguishable for tritanopes
    var secondary: Color = Color(hex: 0xE07A5F) // orange, distinguishable for tritanopes
    var white: Color = Color(hex: 0xFFFFFF)
}
