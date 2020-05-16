//
//  AddEventViewController.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {
    
    var viewModel: AddEventViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisapear()
    }
    
}
