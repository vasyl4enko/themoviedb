//
//  TabCoordinator.swift
//  CommonNavigation
//
//  Created by oleksandr on 05.06.2023.
//

import UIKit
import Home

//enum TabBarPage {
//    
//}

public protocol TabCoordinator: Coordinator {
    var tabBarController: UITabBarController { get set }
//    init(_ navigationController: UINavigationController)
//    func selectPage(_ page: TabBarPage)
//    func setSelectedIndex(_ index: Int)
//    func currentPage() -> TabBarPage?
}

public class TabBarCoordinatorImpl: TabCoordinator {
    public var tabBarController: UITabBarController
    public var parentCoordinator: Coordinator?
    public var children = [Coordinator]()
    public var navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let vc = HomeViewController()
        vc.title = "Home"
        return vc
    }()
    
    required public init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.tabBarController = .init()
    }
    
    public func start() {
//        children.append(homeViewController)
        setup(vc: homeViewController,
                      title: "First Tab",
                      imageName: "paperplane",
                      selectedImageName: "paperplane.fill")
        
        tabBarController.viewControllers = [homeViewController]
        navigationController.viewControllers = [tabBarController]
    }
    
    private func prepareTabBarController(withTabControllers tabControllers: [UIViewController]) {
//        tabBarController.delegate = self
        tabBarController.setViewControllers(tabControllers, animated: true)
        tabBarController.selectedIndex = 0
        tabBarController.tabBar.isTranslucent = false
        navigationController.viewControllers = [tabBarController]
    }
    
    func setup(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        vc.tabBarItem = tabBarItem
    }
}
