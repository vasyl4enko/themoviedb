//
//  HomeCoordinator.swift
//  themoviedb
//
//  Created by oleksandr on 16.06.2023.
//

import UIKit


protocol HomeCoordinatorHandling: AnyObject {

    func handle(event: HomeCoordinator.Event)
}


class HomeCoordinator: NavigationControllerCoordinator{
    enum Event {
        
    }
    
    weak var parent: HomeCoordinatorHandling?
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        start()
    }
    func start() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self

        navigationController.setViewControllers([
            homeViewController
        ], animated: false)
    }
    
}

extension HomeCoordinator: HomeViewControllerHandling {
    func handle(event: HomeViewController.Event) {
        
    }
}
