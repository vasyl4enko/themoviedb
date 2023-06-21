//
//  BaseAPI.swift
//  Networking
//
//  Created by oleksandr on 09.06.2023.
//

import Foundation
import Alamofire
// @escaping
class BaseAPI<T: TargetType> {
    func fetchData<M: Decodable>(target: T, responseClass: M.Type, completionHandler:@escaping (Result<M, NSError>)-> Void) {
        let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
        let headers = Alamofire.HTTPHeaders(target.headers ?? [:])
        let parameters = buildParams(task: target.task)
        AF.request(target.baseURL + target.path, method: method, parameters: parameters.0, encoding: parameters.1, headers: headers).responseJSON { (response) in
            guard let statusCode = response.response?.statusCode else {
                print("StatusCode not found")
                completionHandler(.failure(NSError()))
                return
            }
        }
    }
    
    private func buildParams(task: Task) -> ([String: Any], ParameterEncoding) {
        switch task {
        case .requestPlain:
            return ([:], URLEncoding.default)
        case .requestParameters(parameters: let parameters, encoding: let encoding):
            return (parameters, encoding)
        }
    }
    
}
