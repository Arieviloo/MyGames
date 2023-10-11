//
//  MainViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 06/10/23.
//

import UIKit

class MainViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let homeVC = HomeViewController()
        let platformVC = PlatformViewController()
        
        //       homeVC.navigationItem.largeTitleDisplayMode = .automatic
        //       platformVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let homeNC = UINavigationController(rootViewController: homeVC)
        let platformNC = UINavigationController(rootViewController: platformVC)
        
        homeNC.tabBarItem = UITabBarItem(title: String(localizedKey: "titleHome"), image: UIImage(systemName: "gamecontroller"), tag: 1)
        platformNC.tabBarItem = UITabBarItem(title: String(localizedKey: "titlePlatforms"), image: UIImage(systemName: "arcade.stick.console"), tag: 2)
        
        let tabBarList = [homeNC, platformNC]
        setViewControllers(tabBarList, animated: true)
    }
}
