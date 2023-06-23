//
//  FilmsAPI.swift
//  themoviedb
//
//  Created by Oleksandr on 21.06.2023.
//

import Foundation
import Alamofire

protocol FilmsAPIProtocol {
    func getFilms(completionHandler: @escaping (Result<Films, Error>) -> Void)
}

class FilmsAPI: BaseAPI<FilmsNetworking>, FilmsAPIProtocol {
    func getFilms(completionHandler: @escaping (Result<Films, Error>) -> Void) {
        self.fetchData(target: .getFilms, responseClass: Films.self) { (result) in
            completionHandler(result)
        }
    }
}
