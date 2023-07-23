//
//  NetworkGet.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import Foundation

extension Network {
    static func get(from url: URL?) async -> Result? {
        guard let url = url else {fatalError("Wrong url")}
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            return Result(data: data, response: "RESPONSE: \(response)")
        } catch {fatalError("\(error)")}
    }
    static func get<T: Codable>(_ model: T.Type, from url: URL?) async -> T? {
        guard let result = await get(from: url) else {return nil}
        do {
            return try JSONDecoder().decode(model.self, from: result.data)
        } catch {fatalError("\(error): \(String(data: result.data, encoding: .ascii) ?? "?")")}
    }
}
