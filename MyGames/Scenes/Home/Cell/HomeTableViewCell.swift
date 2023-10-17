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
		$0.backgroundColor = .red
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
	
	lazy var dateLabel: UILabel = {
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
        contentView.addSubview(dateLabel)
    }
	
	public func prepareCell(game: Game) {
		nameLabel.text = game.name
		dateLabel.text = game.releaseDate?.description
		
		if let imageGame = game.cover as? UIImage {
			coverImageView.image = imageGame
		} else {
			coverImageView.image = UIImage(named: "noCover")
		}
	}
	
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            coverImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            coverImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            coverImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
			coverImageView.trailingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: -15),
			coverImageView.widthAnchor.constraint(equalToConstant: 80),
            
			nameLabel.topAnchor.constraint(equalTo: coverImageView.topAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
			dateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
			dateLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
			dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
        ])
    }
}
