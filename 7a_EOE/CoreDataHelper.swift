//
//  CoreDataHelper.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/27/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit
import CoreData
@objc protocol CoreDataHelperDelegate {
    
    optional func successForInserfoodCore(success:String)
    optional func FailureForinsertFoodCore(error:String)
    
    optional func successForRetfoodCore(success:NSArray)
    optional func FailureForRetFoodCore(error:String)
}


class CoreDataHelper: NSObject {
    var delegate: CoreDataHelperDelegate?

    
    func insertFoodItems(food:NSArray){
        
        let ArrayOfData = food[0] as! NSDictionary
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedObjectContext = appDel.managedObjectContext
        
        let entity = NSEntityDescription.insertNewObjectForEntityForName("Food", inManagedObjectContext: managedObjectContext)
        
        let diaryID = ArrayOfData.valueForKey("diaryID")?.intValue
        let patientID = ArrayOfData.valueForKey("patientID")?.intValue


//
//        
        entity.setValue(NSNumber(int: diaryID!), forKey: "diaryID")
        entity.setValue(NSNumber(int: patientID!), forKey: "patientID")

        entity.setValue(ArrayOfData.valueForKey("feelAfter"), forKey: "feelAfter")
        entity.setValue(ArrayOfData.valueForKey("feelBefore"), forKey: "feelBefore")
        entity.setValue(ArrayOfData.valueForKey("image"), forKey: "image")
        entity.setValue(ArrayOfData.valueForKey("inputPerson"), forKey: "inputPerson")
        entity.setValue(ArrayOfData.valueForKey("location"), forKey: "location")
        entity.setValue(ArrayOfData.valueForKey("meal"), forKey: "meal")
        entity.setValue(ArrayOfData.valueForKey("others"), forKey: "others")
        entity.setValue(ArrayOfData.valueForKey("partner"), forKey: "partner")
        entity.setValue(ArrayOfData.valueForKey("someone"), forKey: "someone")
        entity.setValue(ArrayOfData.valueForKey("time"), forKey: "time")
        entity.setValue(ArrayOfData.valueForKey("worry"), forKey: "worry")
        
        do {
            
            try managedObjectContext.save()
            self.delegate?.successForInserfoodCore!("done")
            
        } catch {
            self.delegate?.FailureForinsertFoodCore!("error")
            print("There was a problem!")
            
        }
    
    }
    
    
    
    func retriveFood(){
        
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedObjectContext = appDel.managedObjectContext
        let fetchRequest = NSFetchRequest()
        
        // Create Entity Description
        let entityDescription = NSEntityDescription.entityForName("Food", inManagedObjectContext: managedObjectContext)
        // Configure Fetch Request
        fetchRequest.entity = entityDescription
        do {
            let result = try managedObjectContext.executeFetchRequest(fetchRequest)
            var foodArray = [FoodModel]()

            //  var arrayAid = [Int]()
            if (result.count > 0) {
                
                for res in result as! [NSManagedObject] {
                    
                    let food = FoodModel()
                    food.afterSymptom = "\(res.valueForKey("feelBefore")!)"
                    food.beforeSymptom = "\(res.valueForKey("feelAfter")!)"
                    food.worry = "\(res.valueForKey("worry")!)"
                    food.companyToEat = "\(res.valueForKey("partner")!)"
                    food.placeYouAte = "\(res.valueForKey("location")!)"
                    food.mealType = "\(res.valueForKey("meal")!)"
                    food.foodImg = "https://people.cs.clemson.edu/~rraju/eoeScripts/eoeImgs/\(res.valueForKey("image")!)"
                    //print("\(food.foodImg)")
                    
                    foodArray.append(food)

                }
                
                self.delegate?.successForRetfoodCore!(foodArray)
                
               // print("leagueDictionary:\(LeagueDictionary),\(LeagueDictionary[1])")
            }
        }
        catch {
            let fetchError = error as NSError
            self.delegate?.FailureForRetFoodCore!("\(fetchError.localizedDescription)")
            print(fetchError)
        }
        
    }
    
    
    
}
