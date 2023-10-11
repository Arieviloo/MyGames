//
//  GameView.swift
//  MyGames
//
//  Created by Jadië Oliveira on 11/10/23.
//

import UIKit

class GameView: UIView {
    
    lazy var nameGameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Good"
        return $0
    }(UILabel())
    
    lazy var platformGameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Good"
        return $0
    }(UILabel())
    
    lazy var dateGameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Good"
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubview()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubview() {
        addSubview(nameGameLabel)
        addSubview(platformGameLabel)
        addSubview(dateGameLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nameGameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            nameGameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            nameGameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            
            platformGameLabel.topAnchor.constraint(equalTo: nameGameLabel.bottomAnchor, constant: 20),
            platformGameLabel.leadingAnchor.constraint(equalTo: nameGameLabel.leadingAnchor),
            platformGameLabel.trailingAnchor.constraint(equalTo: nameGameLabel.trailingAnchor),
            
            dateGameLabel.topAnchor.constraint(equalTo: platformGameLabel.bottomAnchor, constant: 20),
            dateGameLabel.leadingAnchor.constraint(equalTo: nameGameLabel.leadingAnchor),
            dateGameLabel.trailingAnchor.constraint(equalTo: nameGameLabel.trailingAnchor),
        
        ])

    }
}
