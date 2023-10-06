//
//  CreateGameVIew.swift
//  MyGames
//
//  Created by Jadië Oliveira on 06/10/23.
//

import UIKit

class CreateGameVIew: UIView {
    
    lazy var nameTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "nome"
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 4
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.autocorrectionType = .no
        $0.keyboardType = .default
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 40))
        $0.leftViewMode = .always
        return $0
    }(UITextField())
    
    lazy var platformTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "plataforma"
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 4
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.autocorrectionType = .no
        $0.keyboardType = .default
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 40))
        $0.leftViewMode = .always
        return $0
    }(UITextField())
    
    lazy var dateLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Data de laçamento"
        return $0
    }(UILabel())
    
    lazy var datePicker: UIDatePicker = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.locale = .current
        $0.datePickerMode = .date
        $0.preferredDatePickerStyle = .wheels
        return $0
    }(UIDatePicker())
    
    lazy var coverImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .red
        return $0
    }(UIImageView())
    
    lazy var addImageButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Adicionar".uppercased(), for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 4
        $0.backgroundColor = UIColor.appPrimaryColor
        return $0
    }(UIButton())
    
    lazy var coverLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Capa"
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubView() {
        addSubview(nameTextField)
        addSubview(platformTextField)
        addSubview(dateLabel)
        addSubview(datePicker)
        addSubview(coverLabel)
        addSubview(coverImageView)
        addSubview(addImageButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            nameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            platformTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            platformTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            platformTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            platformTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            dateLabel.topAnchor.constraint(equalTo: platformTextField.bottomAnchor, constant: 15),
            dateLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            dateLabel.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            datePicker.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 15),
            datePicker.centerXAnchor.constraint(equalTo: centerXAnchor),
            datePicker.heightAnchor.constraint(equalToConstant: 100),
            
            coverLabel.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 15),
            coverLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
            coverLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
            
            coverImageView.topAnchor.constraint(equalTo: coverLabel.bottomAnchor, constant: 15),
            coverImageView.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            coverImageView.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            coverImageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -150),
            
            addImageButton.topAnchor.constraint(equalTo: coverImageView.bottomAnchor, constant: 15),
            addImageButton.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            addImageButton.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            addImageButton.heightAnchor.constraint(equalTo: nameTextField.heightAnchor)
        ])
    }
}
