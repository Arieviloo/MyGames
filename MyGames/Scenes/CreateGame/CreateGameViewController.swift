//
//  CreateGameViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 06/10/23.
//

import UIKit

class CreateGameViewController: UIViewController {
    
    private var createView: CreateGameView?
    
    override func loadView() {
        createView = CreateGameView()
        view = createView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title =  String(localizedKey: "titleCreateGame")
        view.backgroundColor = UIColor.appSecundaryColor
        
        createView?.delegate(delegate: self)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
      
    }
}

extension CreateGameViewController: CreateGameViewProtocol {
    func tappedAddNewGame() {
        guard let date = createView?.datePicker.date else {
            return
        }
        
        print(date)
    }
}
