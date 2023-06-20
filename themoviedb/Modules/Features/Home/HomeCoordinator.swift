//
//  HomeCoordinator.swift
//  themoviedb
//
//  Created by oleksandr on 16.06.2023.
//

import UIKit

protocol HomeCoordinator: NavigationControllerCoordinator {
    
}

class HomeCoordinatorImpl: HomeCoordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        start()
    }
    
    func start() {
        
    }
    
    
}
