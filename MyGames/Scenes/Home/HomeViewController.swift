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
        tableView?.protocolsTableView(delegate: self, dataSource: self)
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell
        
        cell?.nameLabel.text = "zeldinha"
        cell?.platformLabel.text = "NaoIntendo"
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
}


