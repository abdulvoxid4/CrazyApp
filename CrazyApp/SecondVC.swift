//
//  SecondVC.swift
//  CrazyApp
//
//  Created by Abdulvoxid on 27/03/25.
//

import UIKit

class SecondVC: UIViewController {
    //MARK: - UI Components
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to the Animals world!"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        return tableView
    }()
    
    //MARK: - DataModel
    var animals: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    
        navigationItem.hidesBackButton = true
        
        animals = AnimalData.shared.animals
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AnimalTableViewCell.self, forCellReuseIdentifier: "AnimalCell")
        setupUIElements()
    }
    
    func setupUIElements() {
        view.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 30).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
   

}

extension SecondVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as? AnimalTableViewCell else { return UITableViewCell() }
        cell.configure(with: animals[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
}




