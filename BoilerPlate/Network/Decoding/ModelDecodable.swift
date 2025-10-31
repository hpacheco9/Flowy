//
//  ModelDecodable.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import Foundation

protocol ModelDecodable {
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T
}

extension ModelDecodable {
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T {
        try JSONDecoder().decode(T.self, from: data)
    }
}
