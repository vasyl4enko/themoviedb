//
//  HomeNavigationController.swift
//  themoviedb
//
//  Created by Oleksandr on 20.06.2023.
//

import UIKit

class HomeNavigationController: UINavigationController {

    override func viewDidLoad() {

        super.viewDidLoad()

        tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "list.bullet"),
            selectedImage: UIImage(systemName: "list.bullet")
        )

        delegate = self
    }

}

extension HomeNavigationController: UINavigationControllerDelegate {
    
}
