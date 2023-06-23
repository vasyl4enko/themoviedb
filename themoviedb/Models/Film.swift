//
//  Film.swift
//  themoviedb
//
//  Created by Oleksandr on 22.06.2023.
//

import Foundation

struct Films {
    let results: [Film]
    let totalPages: Int
    let totalResults: Int
    let page: Int
    
    enum CodingKeys: String, CodingKey {
        case totalPages = "total_pages"
        case totalResults = "total_results"
        
        case results
        case page
    }
}

extension Films: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        page = try values.decode(Int.self, forKey: .page)
        results = try values.decode([Film].self, forKey: .results)
        totalPages = try values.decode(Int.self, forKey: .totalPages)
        totalResults = try values.decode(Int.self, forKey: .totalResults)
    }
}

struct Film: Codable {
    let adult: Bool
}
