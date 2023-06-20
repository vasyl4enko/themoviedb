//
//  SceneDelegate.swift
//  themoviedb
//
//  Created by oleksandr on 01.06.2023.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var sceneCoordinator: SceneCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let sceneCoordinator = SceneCoordinatorImpl(window: window)
            sceneCoordinator.start()
            self.sceneCoordinator = sceneCoordinator
            window.makeKeyAndVisible()
        }
    }
}
