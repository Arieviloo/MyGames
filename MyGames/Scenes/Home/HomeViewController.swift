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
    
    override func loadView() {
        tableView = HomeView()
        searchController = UISearchController()
        view = tableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitViewController()
    }
    
    private func setupInitViewController() {
        title = "Lista de Jogos"
        view.backgroundColor = UIColor.appSecundaryColor
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handlerAddGame))
        navigationItem.searchController = searchController
    }
    
    @objc func handlerAddGame() {
        print(#function)
    }
    
}

