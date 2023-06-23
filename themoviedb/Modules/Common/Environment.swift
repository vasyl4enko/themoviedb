//
//  Environment.swift
//  themoviedb
//
//  Created by Oleksandr on 21.06.2023.
//

import Foundation

class BaseENV {
    enum Keys: String {
        case API_KEY
        case BASE_URL
    }
    
    let dictionary: NSDictionary
    
    init(resourceName: String) {
        guard let filePath = Bundle.main.path(forResource: resourceName, ofType: "plist"),
        let plist = NSDictionary(contentsOfFile: filePath) else {
            fatalError("Couldn't find file \(resourceName).plist")
        }

        self.dictionary = plist
    }
}


protocol APIKeyble {
    var API_KEY: String {get}
    var BASE_URL: String {get}
}

class DebugENV: BaseENV,APIKeyble {
    var API_KEY: String {
        dictionary.object(forKey: Keys.API_KEY.rawValue) as? String ?? ""
    }
    
    var BASE_URL: String {
        dictionary.object(forKey: Keys.BASE_URL.rawValue) as? String ?? ""
    }
    
    init() {
        super.init(resourceName: "DEBUG_KEYS")
    }
}

class ProdENV: BaseENV,APIKeyble {
    var API_KEY: String {
        dictionary.object(forKey: Keys.API_KEY.rawValue) as? String ?? ""
    }
    
    var BASE_URL: String {
        dictionary.object(forKey: Keys.BASE_URL.rawValue) as? String ?? ""
    }
    
    init() {
        super.init(resourceName: "DEBUG_KEYS")
    }
}
