//
//  EventsListViewController.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import UIKit

class EventsListViewController: UIViewController {
    
    static func instantiate() -> EventsListViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "EventsListViewController") as! EventsListViewController
        
        return viewController
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(plusButtonClicked))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        
        navigationItem.title = "Events"
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func plusButtonClicked() {
        print("plusButtonClicked")
    }
    
    
}
