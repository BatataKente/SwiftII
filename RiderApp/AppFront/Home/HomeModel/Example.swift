//
//  Example.swift
//  RiderApp
//
//  Created by J on 23/07/23.
//

import Foundation

typealias Examples = [Example]

struct Example: Codable {
    let id: String?
    let name: String?
    init(name: String) {
        self.name = name
        self.id = nil
    }
}
