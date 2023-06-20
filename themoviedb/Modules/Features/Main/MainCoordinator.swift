//
//  MainCoordinator.swift
//  themoviedb
//
//  Created by oleksandr on 16.06.2023.
//

import UIKit

protocol MainTabBarCoordinatorHandling: AnyObject {
    func handle(event: MainCoordinatorImpl.Event)
}

protocol MainCoordinator: TabBarConntrollerCoordinator {}

class MainCoordinatorImpl: MainCoordinator {
    
    enum Event {}
    
    var tabBarController: UITabBarController
    var childCoordinators: [Coordinator] = []
    weak var parent: MainTabBarCoordinatorHandling?
    
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
//        let chatNavigationController = ChatNavigationController()
//                let chatCoordinator = ChatCoordinator(navigationController: chatNavigationController)
//                chatCoordinator.parent = self
//                childCoordinators.append(chatCoordinator)
//
//                let orderNavigationController = OrderNavigationController()
//                let orderCoordinator = OrderCoordinator(navigationController: orderNavigationController)
//                orderCoordinator.parent = self
//                childCoordinators.append(orderCoordinator)
//
//                tabBarController.setViewControllers([
//                    chatNavigationController,
//                    orderNavigationController
//                ], animated: true)
    }
    func createAndConfigureCoordinator(for dashboardTab: DashboardTab)/* -> Coordinator */{
//        let coordinator: Coordinator
//        switch dashboardTab {
//        case .home:
//            let homeCoordinator = childCoordinatorFactory.homeCoordinator()
//            homeCoordinator.start()
//            coordinator = homeCoordinator
//        }
//        navigationRootViewController?.setViewControllers([coordinator.rootViewController], animated: false)
//        coordinator.navigationRootViewController?.title = "1"
//        
//        return coordinator
    }
    
}

enum DashboardTab: Int, CaseIterable {
    case home
}
