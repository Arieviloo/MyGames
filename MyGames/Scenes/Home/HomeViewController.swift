//
//  ViewController.swift
//  MyGames
//
//  Created by Jadië Oliveira on 05/10/23.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
	
	private var searchController: UISearchController?
	private var homeView: HomeView?
	private var createGameView = CreateGameViewController()
	private let gameVC = GameViewController()
	private var fetchedResultController: NSFetchedResultsController<Game>?
	
	override func loadView() {
		homeView = HomeView()
		searchController = UISearchController()
		view = homeView
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		homeView?.protocolsTableView(delegate: self, dataSource: self)
		loadListGame()
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
		navigationController?.pushViewController(createGameView, animated: false)
	}
	
	func loadListGame() {
		let fetchRequest: NSFetchRequest<Game> = Game.fetchRequest()
		let sortDescritor = NSSortDescriptor(key: "name", ascending: true)
		fetchRequest.sortDescriptors = [sortDescritor]
		
		fetchedResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
		
		fetchedResultController?.delegate = self
		
		do {
			try fetchedResultController?.performFetch()
		} catch {
			print("Error", #function , "-> \(error.localizedDescription)")
		}
	}
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let count  = fetchedResultController?.fetchedObjects?.count ?? 0
		return count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
		
		guard let game = fetchedResultController?.fetchedObjects?[indexPath.row] else { return cell }
		
		cell.prepareCell(game: game)
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		150
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		gameVC.dataGame("testeee")
		navigationController?.pushViewController(gameVC, animated: true)
	}
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			guard let game = fetchedResultController?.fetchedObjects?[indexPath.row] else { return }
			context.delete(game)
			
		}
	}
	
}

extension HomeViewController: NSFetchedResultsControllerDelegate {
	func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
		
		switch type {
		case .delete:
			if let indexPath = indexPath {
				self.homeView?.listTableview.deleteRows(at: [indexPath], with: .fade)
			}
			break
		default:
			self.homeView?.listTableview.reloadData()
		}
	}
	
}


