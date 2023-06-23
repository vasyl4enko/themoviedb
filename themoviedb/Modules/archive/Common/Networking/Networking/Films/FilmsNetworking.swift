//
//  FilmsNetworking.swift
//  themoviedb
//
//  Created by Oleksandr on 21.06.2023.
//

import Foundation
import Alamofire

enum FilmsNetworking {
    case getFilms
}

extension FilmsNetworking: TargetType {
    var baseURL: String {
        switch self {
        default:
            return ENV.BASE_URL
        }
    }
    
    var path: String {
        switch self {
        case .getFilms:
            return "/discover/movie"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getFilms:
            return .get
        }
    }

    var task: Task {
        switch self {
        case .getFilms:
            return .requestParameters(parameters: ["api_key" : "a9e6fbc376e7dd43037bd17ca7bff423"], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
}
