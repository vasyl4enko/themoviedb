//
//  HomeCoordinator.swift
//  Home
//
//  Created by oleksandr on 07.06.2023.
//

import UIKit
import CommonNavigation

public protocol HomeCoordinator: Coordinator {
    func goToSomePage()
}

public class HomeCoordinatorImpl: HomeCoordinator {
    public var children: [Coordinator] = []
    public var rootViewController: UIViewController!
    public var parentCoordinator: Coordinator?

    public init(navigationController: UINavigationController) {
        self.rootViewController = navigationController
    }
    
    public func goToSomePage() {
        
    }
    
    public func start() {
        navigationRootViewController?.setViewControllers([HomeViewController()], animated: false)
    }
    
    public func moveTo() {
        
    }

}
