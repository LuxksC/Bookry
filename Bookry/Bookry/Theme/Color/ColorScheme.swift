//
//  ColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import SwiftUI

protocol ColorScheme {
    var black: Color { get }
    var danger: Color { get }
    var dangerDark: Color { get }
    var dangerLight: Color { get }
    var primary: Color { get }
    var secondary: Color { get }
    var white: Color { get }
}
