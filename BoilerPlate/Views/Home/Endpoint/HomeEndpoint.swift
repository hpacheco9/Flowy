//
//  HomeEndpoint.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import Foundation


enum HomeEndpoint: Endpointable {
    case data(id: String)
    
    var path: String {
        switch self {
            case .data(id: let id):
            return "users/"
        }
    }
    
    var parameters: [URLQueryItem]? {
        switch self {
        case .data(id: let id):
            return [URLQueryItem(name: "id", value: id)]
        }
    }
}
