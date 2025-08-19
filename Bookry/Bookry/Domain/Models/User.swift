//
//  User.swift
//  Bookry
//
//  Created by Lucas Souza on 19/08/25.
//

struct User: Codable, Identifiable {
    let id: String?
    let document: String?
    let dyslexia: Bool?
    let email: String?
    let isPremium: Bool?
    let name: String?
    let phone: String?
}
