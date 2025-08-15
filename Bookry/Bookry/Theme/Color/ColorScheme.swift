//
//  ColorScheme.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import SwiftUI

protocol ColorScheme {
    var primary: Color { get }
    var secondary: Color { get }
    var black: Color { get }
    var white: Color { get }
}
