//
//  ViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 05/10/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var searchController: UISearchController?
    private var tableView: HomeView?
    private var createGameView = CreateGameViewController()
    
    override func loadView() {
        tableView = HomeView()
        searchController = UISearchController()
        view = tableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupAppearanceNavigation(UIColor.appPrimaryColor)
        setupNavigationController()
    }
    
    private func setupNavigationController() {
        title = String(localizedKey: "titleHome")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handlerAddGame))
        navigationItem.rightBarButtonItem?.tintColor = .white
        navigationItem.searchController = searchController
        navigationItem.backButtonTitle = String(localizedKey: "textBack")
    }
    
    @objc func handlerAddGame() {
        print(#function)
        //        present(platformView, animated: true)
        navigationController?.pushViewController(createGameView, animated: false)
    }
    
}


