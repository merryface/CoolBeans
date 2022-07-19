//
//  MenuSection.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import Foundation

struct MenuSection: Identifiable, Codable {
    let id: UUID
    let name: String
    let drinks: [Drink]
}
