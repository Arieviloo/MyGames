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
		let alert  = UIAlertController(title: "Plataforma", message: "Nome da nova plataforma", preferredStyle: .alert)
		alert.addTextField(configurationHandler: nil)
		alert.addAction(UIAlertAction(title: "Criar", style: .cancel, handler: { [weak self] _ in
			guard let field = alert.textFields?.first, let text = field.text, !text.isEmpty else { return }
			print(text)
		}))
		
		present(alert, animated: true)
    }
    
}
