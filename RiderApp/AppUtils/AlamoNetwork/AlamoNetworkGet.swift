//
//  AlamoNetworkGet.swift
//  RiderApp
//
//  Created by J on 24/07/23.
//

import Foundation
import Alamofire
 
extension AlamoNetwork {
     func get<T: Codable>(
        _ model: T.Type, from url: URL?, escape: @escaping (T) -> Void
    ) {
        guard let url = url else {return}
        AF.request(url).responseDecodable(of: model) {response in
            switch response.result {
                case .success(let data): escape(data)
                case .failure(let error): fatalError(error.errorDescription!)
            }
        }
    }
}
