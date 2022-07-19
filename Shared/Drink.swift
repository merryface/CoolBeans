//
//  Drink.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import Foundation

struct Drink: Identifiable, Codable {
    let id: UUID
    let name: String
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "-")
    }
    
    static let example = Drink(id: UUID(), name: "Example Drink")
}
