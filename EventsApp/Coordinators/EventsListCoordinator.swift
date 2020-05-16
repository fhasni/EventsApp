//
//  EventsListCoordinator.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import UIKit

class EventsListCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //let eventsListViewController = EventsListViewController.instantiate()
        let eventsListViewController: EventsListViewController = .instantiate()
        let viewModel = EventsListViewModel()
        viewModel.coordinator = self
        eventsListViewController.viewModel = viewModel
        navigationController.setViewControllers([eventsListViewController], animated: false)
    }
    
    func startAddEvent() {
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        addEventCoordinator.parentCoordinator = self
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.start()
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        
        //childCoordinators.removeAll(where: {$0 == childCoordinator})
        
        if let index = childCoordinators.firstIndex(where: { coordinator -> Bool in
            return childCoordinator as! AddEventCoordinator === coordinator as! AddEventCoordinator
        }) {
            childCoordinators.remove(at: index)
        }
    }
}
