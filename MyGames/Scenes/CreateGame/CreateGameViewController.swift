//
//  CreateGameViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 06/10/23.
//

import UIKit

class CreateGameViewController: UIViewController {
    
    private var createView: CreateGameVIew?
    
    override func loadView() {
        createView = CreateGameVIew()
        view = createView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Novo jogo"
        view.backgroundColor = UIColor.appSecundaryColor
        
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
      
    }
}
