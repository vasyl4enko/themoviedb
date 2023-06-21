//
//  MainCoordinator.swift
//  themoviedb
//
//  Created by oleksandr on 16.06.2023.
//

import UIKit

protocol MainTabBarCoordinatorHandling: AnyObject {
    func handle(event: MainCoordinator.Event)
}

class MainCoordinator: TabBarConntrollerCoordinator {
    
    enum Event {}
    weak var parent: MainTabBarCoordinatorHandling?
    var tabBarController: UITabBarController
    var childCoordinators: [Coordinator] = []
    
    
    // MARK: Initializers
    
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        
        start()
    }
    
    convenience init() {
        self.init(tabBarController: UITabBarController())
    }
    
    // MARK: Public
    
    func start() {
        let homeNavigationViewController = HomeNavigationController()
        let homeCoordinator = HomeCoordinator(navigationController: homeNavigationViewController)
        homeCoordinator.parent = self
        self.childCoordinators.append(homeCoordinator)

        tabBarController.setViewControllers([
            homeNavigationViewController,
        ], animated: true)
    }
}

extension MainCoordinator: HomeCoordinatorHandling {
    func handle(event: HomeCoordinator.Event) {
        
    }
}
