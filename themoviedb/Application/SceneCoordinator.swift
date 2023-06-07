//
//  SceneCoordinator.swift
//  themoviedb
//
//  Created by oleksandr on 03.06.2023.
//
import CommonNavigation
import UIKit
import SwiftUI
import Home

class SceneCoordinator: Coordinator {
    var window: UIWindow
    var parentCoordinator: Coordinator?
    var children = [Coordinator]()
    var navigationController: UINavigationController = .init()
    
    init(window: UIWindow) {
        self.window = window
        navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    func start() {
        
        showMainFlow()
    }
    
    func showMainFlow() {
        let tabCoordinator = TabBarCoordinatorImpl(navigationController)
        window.rootViewController = tabCoordinator.navigationController
        tabCoordinator.start()
        children.append(tabCoordinator)
    }
}
