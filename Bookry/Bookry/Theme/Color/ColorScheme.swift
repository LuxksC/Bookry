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
    var gray: Color { get }
    var grayDark: Color { get }
    var grayLight: Color { get }
    var primary: Color { get }
    var secondary: Color { get }
    var success: Color { get }
    var successDark: Color { get }
    var successLight: Color { get }
    var warning: Color { get }
    var warningDark: Color { get }
    var warningLight: Color { get }
    var white: Color { get }
}
