//
//  Serving.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 31/07/2022.
//

import Foundation

struct Serving: Identifiable, Codable {
    var id: UUID
    let name: String
    let description: String
    let caffeine: Int
    let calories: Int
}
