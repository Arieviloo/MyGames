//
//  CreateGameViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 06/10/23.
//

import UIKit

class CreateGameViewController: UIViewController {
    
    private var createView: CreateGameView?
	public var game: Game?
    
    override func loadView() {
        createView = CreateGameView()
        view = createView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title =  String(localizedKey: "titleCreateGame")
        view.backgroundColor = UIColor.appSecundaryColor
        
        createView?.delegate(delegate: self)
        createView?.protocolTextField(delegate: self)
        dismissKeyBoard()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
      
    }
}

extension CreateGameViewController: CreateGameViewProtocol {
    func tappedAddNewGame() {
		if game == nil {
			game = Game(context: context)
		}
		game?.name = createView?.nameTextField.text
		game?.releaseDate = createView?.datePicker.date
		
		do {
			try context.save()
		} catch {
			print("Error", #function , "-> \(error.localizedDescription)")
		}
        
		navigationController?.popViewController(animated: true)
    }
}

extension CreateGameViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
