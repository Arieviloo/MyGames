//
//  PlatformsViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 05/10/23.
//

import UIKit

class PlatformViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.appThirdColor
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func setupInitViewController() {
        title = "Plataformas"
        view.backgroundColor = UIColor.appSecundaryColor
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handlerAddPlatfomr))
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    @objc private func handlerAddPlatfomr() {
        print(#function)
    }
    
}
