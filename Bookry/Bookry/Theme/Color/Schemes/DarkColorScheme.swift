//
//  DarkColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

struct DarkColorScheme: ColorScheme {
    var primary: Color = Color(hex: 0xB39DDB) // light purple for dark backgrounds
    var secondary: Color = Color(hex: 0xFFD54F) // light yellow for contrast
    var black: Color = Color(hex: 0xFFFFFF) // white for text on dark backgrounds
    var white: Color = Color(hex: 0x212121) // dark gray for backgrounds
}
