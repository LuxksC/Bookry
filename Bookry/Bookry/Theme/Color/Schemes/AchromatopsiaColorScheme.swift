//
//  AchromatopsiaColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

struct AchromatopsiaColorScheme: ColorScheme {
    var black: Color = Color(hex: 0x000000)
    var danger: Color = Color(hex: 0x888888) // medium gray
    var dangerDark: Color = Color(hex: 0x444444) // dark gray
    var dangerLight: Color = Color(hex: 0xCCCCCC) // light gray
    var primary: Color = Color(hex: 0x888888) // medium gray
    var secondary: Color = Color(hex: 0xCCCCCC) // light gray
    var white: Color = Color(hex: 0xFFFFFF)
}
