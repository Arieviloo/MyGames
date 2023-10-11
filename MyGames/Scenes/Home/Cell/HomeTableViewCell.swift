//
//  HomeTableViewCell.swift
//  MyGames
//
//  Created by Jadië Oliveira on 11/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeTableViewCell"
    
    lazy var coverImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var platformLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupSubview()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubview() {
        contentView.addSubview(coverImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(platformLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
//            coverImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
//            coverImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
//            coverImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
//            coverImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            platformLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            platformLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            platformLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
        ])
    }
}
