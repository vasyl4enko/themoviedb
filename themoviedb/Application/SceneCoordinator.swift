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
        showMainTabBar()
    }
    
    private func showMainTabBar() {
        let mainTabBarCoordinator = MainCoordinator()
        mainTabBarCoordinator.parent = self
        window.rootViewController = mainTabBarCoordinator.tabBarController
    }
}

extension SceneCoordinatorImpl: MainTabBarCoordinatorHandling {
    func handle(event: MainCoordinator.Event) {
        
    }
}
