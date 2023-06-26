//
//  BaseAPI.swift
//  Networking
//
//  Created by oleksandr on 09.06.2023.
//

import Foundation
import Alamofire

class BaseAPI<T: TargetType> {
    func fetchData<M: Decodable>(target: T, responseClass: M.Type, completionHandler:@escaping (Result<M, Error>)-> Void) {
        let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
        let headers = Alamofire.HTTPHeaders(target.headers ?? [:])
        let parameters = buildParams(task: target.task)
        let afRequest = AF.request(target.baseURL + target.path, method: method, parameters: parameters.0, encoding: parameters.1, headers: headers)
        afRequest.responseDecodable(of: M.self, decoder: JSONDecoder()) { response in
            guard response.response?.statusCode == 200 else {
                return
            }
            
            switch response.result {
            case .failure(let error):
                completionHandler(.failure(error))
            case .success(let value):
                completionHandler(.success(value))
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

enum NetworkError: Error {
    case badURL
}
//        AF.request(target.baseURL + target.path, method: method, parameters: parameters.0, encoding: parameters.1, headers: headers).responseJSON { (response) in
//            guard let statusCode = response.response?.statusCode else {
//                print("StatusCode not found")
//                completionHandler(.failure(NetworkError.badURL))
//                return
//            }
//            guard statusCode == 200 else {
//                print("error statusCode is \(statusCode)")
//                completionHandler(.failure(NetworkError.badURL))
//                return
//            }
//
//            guard let jsonResponse = try? response.result.get() else {
//                print("jsonResponse error")
//                completionHandler(.failure(NetworkError.badURL))
//                return
//            }
//
//            guard let theJSONData = try? JSONSerialization.data(withJSONObject: jsonResponse, options: []) else {
//                print("theJSONData error")
//                completionHandler(.failure(NetworkError.badURL))
//                return
//            }
//            guard let responseObj = try? JSONDecoder().decode(M.self, from: theJSONData) else {
//                print("responseObj error")
//                completionHandler(.failure(NetworkError.badURL))
//                return
//            }
//
//            completionHandler(.success(responseObj))
//
//        }
