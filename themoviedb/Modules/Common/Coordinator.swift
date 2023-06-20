//
//  Coordinator.swift
//  themoviedb
//
//  Created by oleksandr on 16.06.2023.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators:[Coordinator] {get set}
    
    func start()
}

protocol Coordinated: AnyObject {
    associatedtype Coordinator
    var coordinator: Coordinator? {get set}
}

protocol ParentCoordinated: AnyObject {
    associatedtype Parent
    var parent: Parent? { get set }
}

protocol NavigationControllerCoordinator: Coordinator {
    var navigationController: UINavigationController {get}
}

protocol TabBarConntrollerCoordinator: Coordinator {
    var tabBarController: UITabBarController {get}
}


