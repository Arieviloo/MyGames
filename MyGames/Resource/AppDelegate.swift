//
//  AppDelegate.swift
//  MyGames
//
//  Created by Jadië Oliveira on 05/10/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        
        var nav = UINavigationBar.appearance()
        nav.tintColor = UIColor.white
        nav.barTintColor = UIColor.red
        
        return true
    }
}

