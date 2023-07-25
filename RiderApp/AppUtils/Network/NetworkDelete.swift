//
//  NetworkDelete.swift
//  RiderApp
//
//  Created by J on 23/07/23.
//

import Foundation
import Alamofire

extension Network {
    func delete(from url: URL?) async -> Result? {
        guard let url = url else {fatalError("Wrong url")}
        let request = {() -> URLRequest in
            var request = URLRequest(url: url)
            request.httpMethod = .delete
            return request
        }
        do {
            let (data, response) = try await URLSession.shared.data(for: request())
            return Result(data: data, response: "\(response)")
        } catch {fatalError("\(error)")}
    }
}
