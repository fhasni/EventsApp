//
//  EventsListViewModel.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import Foundation

final class EventsListViewModel {
    
    let title = "Events"
    
    var coordinator: EventsListCoordinator?
    
    func tappedAddEvent() {
        
        print("tappedAddEvent")
        coordinator?.startAddEvent()
    }
    
}
