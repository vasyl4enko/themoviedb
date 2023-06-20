//
//  DashboardCoordinator.swift
//  Dashboard
//
//  Created by oleksandr on 07.06.2023.
//

import UIKit

public protocol DashboardCoordinator: Coordinator {
    
}

public class DashboardCoordinatorImpl: DashboardCoordinator {
    public var children: [Coordinator] = []
    weak public var parentCoordinator: Coordinator?
    public private(set) var rootViewController: UIViewController!
    private let tabBarController: UITabBarController
    private let childCoordinatorFactory: DashboardChildCoordinatorFactory
    
    init(tabBarController: UITabBarController, childCoordinatorFactory: DashboardChildCoordinatorFactory) {
        self.tabBarController = tabBarController
        self.childCoordinatorFactory = childCoordinatorFactory
    }
    
    public convenience init() {
        self.init(tabBarController: UITabBarController(), childCoordinatorFactory: DashboardChildCoordinatorFactoryImpl())
    }
    
    public func start() {
        var tabBarCoordinators:[Coordinator] = []
        DashboardTab.allCases.forEach ({
            let coordinator = createAndConfigureCoordinator(for: $0)
            addChildCoordinator(coordinator)
            tabBarCoordinators.append(coordinator)
        })
        
        tabBarController.setViewControllers(tabBarCoordinators.compactMap { $0.navigationRootViewController },
                                            animated: false)
        rootViewController = tabBarController
    }
    
     
    func createAndConfigureCoordinator(for dashboardTab: DashboardTab) -> Coordinator {
        let coordinator: Coordinator
        switch dashboardTab {
        case .home:
            let homeCoordinator = childCoordinatorFactory.homeCoordinator()
            homeCoordinator.start()
            coordinator = homeCoordinator
        }
        navigationRootViewController?.setViewControllers([coordinator.rootViewController], animated: false)
        coordinator.navigationRootViewController?.title = "1"
        
        return coordinator
    }
}


enum DashboardTab: Int, CaseIterable {
    case home
}
