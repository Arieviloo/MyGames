//
//  HomeView.swift
//  MyGames
//
//  Created by Jadië Oliveira on 05/10/23.
//

import UIKit

class HomeView: UIView {
    
    lazy var listTableview: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        $0.separatorInset = .zero
        $0.separatorColor = UIColor.appPrimaryColor
        return $0
    }(UITableView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func protocolsTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        listTableview.delegate = delegate
        listTableview.dataSource = dataSource
    }
    
    private func setupSubView() {
        addSubview(listTableview)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            listTableview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            listTableview.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            listTableview.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            listTableview.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}
