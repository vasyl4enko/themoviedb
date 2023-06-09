//
//  SceneDelegate.swift
//  themoviedb
//
//  Created by oleksandr on 01.06.2023.
//

import UIKit
import CommonNavigation
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
//    var sceneCoordinar: Coordinator?
    lazy var sceneCoordinator: SceneCoordinator = {
        SceneCoordinatorImpl(window: window)
    }()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            self.window = window
            sceneCoordinator.start()
            window.makeKeyAndVisible()
        }
//        guard let scene = scene as? UIWindowScene else { return }
//        window = UIWindow(windowScene: scene)
//        window?.rootViewController = HomeViewController()
//        window?.makeKeyAndVisible()
    }
    
}

//            window.rootViewController = HomeViewController()
