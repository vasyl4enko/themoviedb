//
//  DashboardChildCoordinatorFactory.swift
//  Dashboard
//
//  Created by oleksandr on 07.06.2023.
//

import UIKit
import Home

protocol DashboardChildCoordinatorFactory {
    func homeCoordinator() -> HomeCoordinator
}

final class DashboardChildCoordinatorFactoryImpl: DashboardChildCoordinatorFactory {
    func homeCoordinator() -> HomeCoordinator {
        HomeCoordinatorImpl(navigationController: UINavigationController())
    }
}
