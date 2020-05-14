//
//  AppCoordinator.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/13/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import UIKit

protocol Coordinator {
    
    var childCoordinators: [Coordinator] { get }
    func start()
    
}


final class AppCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()

        let eventsListCoordinator = EventsListCoordinator(navigationController: navigationController)
        childCoordinators.append(eventsListCoordinator)

        eventsListCoordinator.start()
        
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}
