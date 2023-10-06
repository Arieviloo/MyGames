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
    private var platformView = PlatformViewController()
    
    override func loadView() {
        tableView = HomeView()
        searchController = UISearchController()
        view = tableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitViewController()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.appPrimaryColor
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func setupInitViewController() {
        title = "Lista de Jogos"
        view.backgroundColor = UIColor.appSecundaryColor
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handlerAddGame))
        navigationItem.rightBarButtonItem?.tintColor = .white
        navigationItem.searchController = searchController
     
    }
    
    @objc func handlerAddGame() {
        print(#function)
//        present(platformView, animated: true)
        navigationController?.pushViewController(platformView, animated: false)
    }
    
}


