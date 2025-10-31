//
//  Endpoitable.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import Foundation

protocol Endpointable {
    var path: String { get }
    var scheme: String { get }
    var method: HttpMethod { get }
    var host: String { get }
    var headers: [String: String] { get }
    var parameters: [URLQueryItem]? { get }
    var url: URL? { get }
}

extension Endpointable {
    var scheme: String { "http" }
    var method: HttpMethod { .get }
    var host: String { ""}
    
    var headers: [String: String] {
        ["": ""]
    }
    
    var url: URL? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = parameters
        
        return components.url
    }
    
    func urlRequest(url: URL) -> URLRequest {
        
        var urlRequest = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy)
        urlRequest.httpMethod = method.rawValue
        headers.forEach { urlRequest.addValue($0.value, forHTTPHeaderField: $0.key) }
        
        return urlRequest
        
    }
}
