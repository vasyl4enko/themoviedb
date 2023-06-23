//
//  NavigationController.swift
//  CommonNavigation
//
//  Created by oleksandr on 09.06.2023.
//

import UIKit

extension UINavigationController {
    public func pushCoordinator(_ coordinator: Coordinator, animated: Bool) {
        pushViewController(coordinator.rootViewController, animated: animated)
    }
}
