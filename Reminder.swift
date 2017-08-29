//
//  Reminder+CoreDataClass.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/28/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import Foundation
import CoreData

@objc(Reminder)
public class Reminder: NSManagedObject {
  
  let persistencyManager = PersistencyManager.sharedManager

  func saveReminder(with title: String, date: NSDate) {
    let reminder = NSEntityDescription.insertNewObject(forEntityName: "Reminder", into: persistencyManager.persistentContainer.viewContext) as! Reminder
    reminder.title = title
    reminder.date = date
    
    persistencyManager.saveContext()
  }
}
