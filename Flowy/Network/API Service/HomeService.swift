//
//  HomeService.swift
//  BoilerPlate
//
//  Created by Henrique Pacheco on 31/10/2025.
//

import Foundation

typealias HomeModel = APIHomeModel

protocol HomeServiceProtocol {
    func fetchHomeData(id: String) async throws -> HomeModel
}

struct HomeService {
    let client: APIClient
    
    init(client: APIClient) {
        self.client = client
    }
}

extension HomeService{
    func fetchHomeData(id: String) async throws -> HomeModel {
        let data = try await client.fetch(endpoint: HomeEndpoint.data(id: id))
        return try decode(HomeModel.self, from: data)
    }
}

extension HomeService : ModelDecodable {}
