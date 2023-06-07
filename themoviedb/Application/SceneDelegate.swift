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

    var sceneCoordinar: Coordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let sceneCoordinator = SceneCoordinator(window: window)
            sceneCoordinator.start()
            self.sceneCoordinar = sceneCoordinator
//            self.window = window
            window.makeKeyAndVisible()
        }
//        guard let scene = scene as? UIWindowScene else { return }
//        window = UIWindow(windowScene: scene)
//        window?.rootViewController = HomeViewController()
//        window?.makeKeyAndVisible()
    }
    
}

//            window.rootViewController = HomeViewController()
