//
//  Food+CoreDataProperties.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/27/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Food {

    @NSManaged var diaryID: NSNumber?
    @NSManaged var feelAfter: String?
    @NSManaged var feelBefore: String?
    @NSManaged var image: String?
    @NSManaged var inputPerson: String?
    @NSManaged var location: String?
    @NSManaged var meal: String?
    @NSManaged var others: String?
    @NSManaged var partner: String?
    @NSManaged var patientID: NSNumber?
    @NSManaged var time: String?
    @NSManaged var worry: String?
    @NSManaged var someone: String?

}
