//
//  Reminder+CoreDataProperties.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/28/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import Foundation
import CoreData


extension Reminder {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Reminder> {
        return NSFetchRequest<Reminder>(entityName: "Reminder")
    }

    @NSManaged public var title: String?
    @NSManaged public var date: NSDate?

}
