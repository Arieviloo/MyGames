//
//  UIViewController+Extension.swift
//  MyGames
//
//  Created by Jadië Oliveira on 09/10/23.
//
import Foundation
import UIKit


extension UIViewController {
    func dismissKeyBoard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func setupAppearanceNavigation(_ backColor: UIColor) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backColor
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .white

        tabBarController?.tabBar.backgroundColor = UIColor.appSecundaryColor
        tabBarController?.tabBar.tintColor = UIColor.black
        
        view.backgroundColor = .white
    }
}
