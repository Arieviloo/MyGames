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
        setupAppearanceNavigation(UIColor.appThirdColor)
        setupInitViewController()
    }
    
    private func setupInitViewController() {
        title = String(localizedKey: "titlePlatforms")
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handlerAddPlatfomr))
    }
    
 
    
    @objc private func handlerAddPlatfomr() {
        print(#function)
    }
    
}
