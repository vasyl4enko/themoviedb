//
//  SettingsCoordinator.swift
//  Settings
//
//  Created by oleksandr on 06.06.2023.
//

import UIKit
import CommonNavigation

public class SettingsCoordinator: Coordinator {
    public var parentCoordinator: Coordinator?
    public var children = [Coordinator]()
    public var navigationController: UINavigationController

    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        
    }
}
