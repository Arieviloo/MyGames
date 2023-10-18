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
		showAlert(with: nil)
    }
	
	private func showAlert(with console: Platform?) {
		let title = console == nil ? "Adicionar" : "Editar"
		let alert  = UIAlertController(title: "\(title) Plataforma", message: nil, preferredStyle: .alert)
//		alert.addTextField(configurationHandler: nil)
		alert.addTextField{ (textfield) in
			textfield.placeholder = "Nome da plataforma"
			if let name = console?.name {
				textfield.text = name
			}
		}
		alert.addAction(UIAlertAction(title: title, style: .default, handler: { (action) in
//			let console = console ?? Platform(context: self.context)
//			console.name = alert.textFields?.first?.text
			guard let text = alert.textFields?.first?.text else { return }
			
			print(text)
		}))
		alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
		
		present(alert, animated: true)
	}
    
}
