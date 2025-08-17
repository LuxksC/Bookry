//
//  DefaultFont.swift
//  Bookry
//
//  Created by Lucas Souza on 15/08/25.
//

import Foundation
import SwiftUI

protocol BFont {
    func style(_ style: FontStyle) -> UIFont
}

extension BFont where Self == DefaultFont {
    static var `default`: DefaultFont { .init() }
}

struct DefaultFont: BFont {
    func style(_ style: FontStyle) -> UIFont {
        switch style {
        case .bold0:
            return UIFont.systemFont(ofSize: 56, weight: .bold)
        case .bold2:
            return UIFont.systemFont(ofSize: 36, weight: .bold)
        case .bold4:
            return UIFont.systemFont(ofSize: 24, weight: .bold)
        case .bold6:
            return UIFont.systemFont(ofSize: 16, weight: .bold)
        case .regular2:
            return UIFont.systemFont(ofSize: 36, weight: .regular)
        case .regular4:
            return UIFont.systemFont(ofSize: 24, weight: .regular)
        case .regular6:
            return UIFont.systemFont(ofSize: 16, weight: .regular)
        case .regular8:
            return UIFont.systemFont(ofSize: 12, weight: .regular)
            
        }
    }
}
