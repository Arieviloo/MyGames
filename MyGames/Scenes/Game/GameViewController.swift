//
//  GameViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 11/10/23.
//

import UIKit

class GameViewController: UIViewController {
    
    private var gameView: GameView?
    
    override func loadView() {
        self.gameView = GameView()
        view = gameView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.appSecundaryColor
    }
    
    func dataGame(_ name: String) {
        print(name)
    }
}
