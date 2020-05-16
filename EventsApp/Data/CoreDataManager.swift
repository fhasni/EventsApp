//
//  CoreDataManager.swift
//  EventsApp
//
//  Created by Faiçal Hasni on 5/14/20.
//  Copyright © 2020 Faiçal Hasni. All rights reserved.
//

import CoreData
import UIKit

final class CoreDataManager {
    
    private lazy var persistanceContainer: NSPersistentContainer = {
        
        let persistentContainer = NSPersistentContainer(name: "EventsApp")
        persistentContainer.loadPersistentStores {_, error in
            print(error?.localizedDescription ?? "")
        }
        return persistentContainer
    }()
    
    private lazy var moc: NSManagedObjectContext = {
        persistanceContainer.viewContext
    }()
    
    func saveEvent(name:String, date: Date, image:UIImage) {
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        event.setValue(image.jpegData(compressionQuality: 1), forKey: "image")
        event.setValue(date, forKey: "date")
        
        do {
            try moc.save()
        } catch {
            print(error)
        }
    }
    
    func fetchEvents() -> [Event]{
        do {
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(fetchRequest)
            return events
        } catch {
            print(error)
            return []
        }
    }
    
    
}
