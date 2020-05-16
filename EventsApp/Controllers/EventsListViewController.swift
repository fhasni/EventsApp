//
//  EventsListViewController.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import UIKit

class EventsListViewController: UIViewController {
    
    var viewModel: EventsListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddEventButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        
        navigationItem.title = viewModel.title
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func tappedAddEventButton() {
        viewModel.tappedAddEvent()
    }
    
    
}
