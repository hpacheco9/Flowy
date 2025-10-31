//
//  APIClient.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import Foundation


protocol APiclientProtocol {
    func fetch(endpoint: Endpointable) async throws -> Data
}

class APIClient {
    let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
}

extension APIClient: APiclientProtocol {
    func fetch(endpoint: Endpointable) async throws -> Data {
        guard let url = endpoint.url else {
           throw URLError(.badURL)
        }
        
        let urlREquest = URLRequest(url: url)
        
        let (data, response) = try await session.data(for: urlREquest)
        
        guard response is HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }
        
        return data   
    }
}
