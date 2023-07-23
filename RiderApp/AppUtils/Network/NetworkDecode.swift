//
//  NetworkDecode.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import Foundation

extension Network {
    static func decode<T: Codable>(_ model: T.Type, from data: Data) -> T? {
        do {
            return try JSONDecoder().decode(model.self, from: data)
        } catch {fatalError("\(error): \(String(data: data, encoding: .ascii) ?? "?")")}
    }
}
