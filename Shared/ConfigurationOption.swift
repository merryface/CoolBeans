//
//  ConfigurationOption.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import Foundation


struct ConfigurationOption: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOption(id: UUID(), name: "None", calories: 0)
}
