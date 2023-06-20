//
//  SceneCoordinator.swift
//  themoviedb
//
//  Created by oleksandr on 03.06.2023.
//
//import CommonNavigation
import UIKit
import SwiftUI

protocol SceneCoordinator {}

class SceneCoordinatorImpl: SceneCoordinator {
    let window: UIWindow
    var rootCoordinator: Coordinator?
    
    init(window: UIWindow) {
        self.window = window
        
        start()
    }
    
    func start() {
        
    }
    
    private func showMainTabBar() {
        let mainTabBarCoordinator = MainCoordinatorImpl()
        mainTabBarCoordinator.parent = self
    }
}

extension SceneCoordinatorImpl: MainTabBarCoordinatorHandling {
    func handle(event: MainCoordinatorImpl.Event) {
        
    }
}

//import Home
//import Dashboard

//protocol SceneCoordinator: Coordinator {
//
//}
//
//final class SceneCoordinatorImpl: SceneCoordinator {
//
//    // MARK: Public properties
//
//    var children: [Coordinator] = []
//    weak var rootViewController: UIViewController!
//    weak var parentCoordinator: Coordinator?
//
//    // MARK: - Dependencies
//
//    private let window: UIWindow?
//    private let dashBoardCoordinator: DashboardCoordinator
//
//    // MARK: - Init
//
//    init(window: UIWindow?) {
//        self.window = window
//        dashBoardCoordinator = DashboardCoordinatorImpl()
//    }
//
//    func start() {
//        dashBoardCoordinator.start()
//        window?.rootViewController = dashBoardCoordinator.rootViewController
//    }
//
//}
