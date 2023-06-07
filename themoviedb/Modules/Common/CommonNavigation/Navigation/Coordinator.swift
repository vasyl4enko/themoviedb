//
//  Coordinator.swift
//  CommonNavigation
//
//  Created by oleksandr on 01.06.2023.
//

import UIKit

protocol FlowCoordinator: AnyObject {
    
}

protocol MainBaseCoordinator: {
    
}

public protocol Coordinator {
    var parentCoordinator: Coordinator? {get set}
    var children: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
