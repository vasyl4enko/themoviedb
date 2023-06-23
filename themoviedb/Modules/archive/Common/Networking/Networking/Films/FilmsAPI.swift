//
//  FilmsAPI.swift
//  themoviedb
//
//  Created by Oleksandr on 21.06.2023.
//

import Foundation

protocol FilmsAPIProtocol {
    func getFilms(completionHandler: @escaping (Result<Films, NSError>) -> Void)
}

class FilmsAPI: BaseAPI<FilmsNetworking>, FilmsAPIProtocol {
    func getFilms(completionHandler: @escaping (Result<Films, NSError>) -> Void) {
        self.fetchData(target: .getFilms, responseClass: Films.self) { (result) in
            print(result)
        }
    }
}
