//
//  HomeViewController.swift
//  themoviedb
//
//  Created by Oleksandr on 20.06.2023.
//

import UIKit

protocol HomeViewControllerHandling: AnyObject {
    func handle(event: HomeViewController.Event)
}


class HomeViewController: UIViewController {
    enum Event {}
    var homeViewModel: HomeViewModel?
    weak var coordinator: HomeViewControllerHandling?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
