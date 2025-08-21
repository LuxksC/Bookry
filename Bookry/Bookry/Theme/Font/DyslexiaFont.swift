//
//  DyslexiaFont.swift
//  Bookry
//
//  Created by Lucas Souza on 20/08/25.
//

import SwiftUI

extension BFont where Self == DyslexiaFont {
    static var dyslexia: DyslexiaFont { .init() }
}

struct DyslexiaFont: BFont {
    
    private let fontNameBold = FontName.Dyslexia.bold
    private let fontNameRegular = FontName.Dyslexia.regular
    
    func style(_ style: FontStyle) -> UIFont {
        switch style {
        case .bold0:
            return UIFont(name: fontNameBold, size: 36) ?? UIFont.systemFont(ofSize: 36, weight: .bold)
        case .bold1:
            return UIFont(name: fontNameBold, size: 32) ?? UIFont.systemFont(ofSize: 32, weight: .bold)
        case .bold2:
            return UIFont(name: fontNameBold, size: 28) ?? UIFont.systemFont(ofSize: 28, weight: .bold)
        case .bold3:
            return UIFont(name: fontNameBold, size: 24) ?? UIFont.systemFont(ofSize: 24, weight: .bold)
        case .bold4:
            return UIFont(name: fontNameBold, size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .bold)
        case .bold5:
            return UIFont(name: fontNameBold, size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .bold)
        case .bold6:
            return UIFont(name: fontNameBold, size: 12) ?? UIFont.systemFont(ofSize: 12, weight: .bold)
        case .regular0:
            return UIFont(name: fontNameRegular, size: 36) ?? UIFont.systemFont(ofSize: 36, weight: .regular)
        case .regular1:
            return UIFont(name: fontNameRegular, size: 32) ?? UIFont.systemFont(ofSize: 32, weight: .regular)
        case .regular2:
            return UIFont(name: fontNameRegular, size: 28) ?? UIFont.systemFont(ofSize: 28, weight: .regular)
        case .regular3:
            return UIFont(name: fontNameRegular, size: 24) ?? UIFont.systemFont(ofSize: 24, weight: .regular)
        case .regular4:
            return UIFont(name: fontNameRegular, size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .regular)
        case .regular5:
            return UIFont(name: fontNameRegular, size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .regular)
        case .regular6:
            return UIFont(name: fontNameRegular, size: 12) ?? UIFont.systemFont(ofSize: 12, weight: .regular)
        case .regular7:
            return UIFont(name: fontNameRegular, size: 8) ?? UIFont.systemFont(ofSize: 8, weight: .regular)
        }
    }
}
