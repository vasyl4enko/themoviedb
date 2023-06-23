//
//  Coordinator.swift
//  CommonNavigation
//
//  Created by oleksandr on 01.06.2023.
//

import UIKit

public protocol Coordinator: AnyObject {
    var children: [Coordinator] { get set }
    var rootViewController: UIViewController! { get }
    var parentCoordinator: Coordinator? { get set }
    
    func start()
}

public extension Coordinator {
    var navigationRootViewController: UINavigationController? {
            get {
                rootViewController as? UINavigationController
            }
        }
    
    func addChildCoordinator(_ coordinator: Coordinator) {
        coordinator.parentCoordinator = self
        children.append(coordinator)
    }
}
