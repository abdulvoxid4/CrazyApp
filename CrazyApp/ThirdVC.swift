//
//  ThirdVC.swift
//  CrazyApp
//
//  Created by Abdulvoxid on 28/03/25.
//

import UIKit

final class ThirdVC: UIViewController {
    
    var selectedCategory: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    init(selectedCategory: String? = nil) {
        super.init()
        self.selectedCategory = selectedCategory
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
