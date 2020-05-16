//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//



class AddEventViewModel {

    var coordinator: AddEventCoordinator?
    
    func viewDidDisapear() {
        coordinator?.didFinishAddEvent()
    }
}
