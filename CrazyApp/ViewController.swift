//
//  ViewController.swift
//  CrazyApp
//
//  Created by Abdulvoxid on 27/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Components
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter 7377 password to get access to next view!"
        label.textColor = .black
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter password"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        textField.backgroundColor = .lightGray
        return textField
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Submit", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 16
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    
    // MARK: - Constraints
    func setupUI() {
        view.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 40).isActive = true
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 40).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    // MARK: - Button actions
    @objc private func buttonTapped() {
        if textField.text == "7377" {
            navigationController?.pushViewController(CategoriesView(), animated: true)
        } else {
            let alert = UIAlertController(title: "Error", message: "Incorrect password!!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            present(alert, animated: true)
        }
    }

}

