//
//  UIViewController.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import UIKit

extension UIViewController {

    
    static func instantiate<T>() -> T {
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return viewController
        
    }
}
