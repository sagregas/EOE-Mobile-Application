//
//  DisplayFoodViewController.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/19/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit
import SDWebImage

class DisplayFoodViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,PortalServiceDelegate,CoreDataHelperDelegate {

    var foodArray = [FoodModel]()
    var service = PortalService()
    var core = CoreDataHelper()

    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
//        service.delegate = self
//        service.getFoodDiary()
        core.delegate = self
        core.retriveFood()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(sender: AnyObject) {
        performSegueWithIdentifier("add", sender: self)
    }
    
   
    
    func successForRetfoodCore(success: NSArray) {
        foodArray = []
        foodArray = success as! [FoodModel]
        self.tableview.reloadData()
    }
    
    func FailureForRetFoodCore(error: String) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        var foodModel = FoodModel()
        
        foodModel = foodArray[indexPath.row]
        
        
        cell.mealType.text = foodModel.mealType
        cell.company.text = foodModel.companyToEat
        cell.placeEat.text = foodModel.placeYouAte
        cell.beforeSymp.text = foodModel.beforeSymptom
        cell.afterSymp.text = foodModel.afterSymptom
        cell.worried.text = foodModel.worry
        print("foodModelStr:\(foodModel.foodImg!)")
        
        let url : NSString = foodModel.foodImg!
        let urlStr : NSString = url.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        let searchURL : NSURL = NSURL(string: urlStr as String)!
        print("serach:\(searchURL)")
      

        cell.foodImg?.sd_setImageWithURL(searchURL, placeholderImage:UIImage(named: "Food_vector_icon_restaurant_pixel_perfect"))
        return cell
    }
    
    func successForGetFood(success: NSArray) {
        
        foodArray = []

        if success.count > 0 {
            
            print("count:\(success)")
            
            for res in (success  as? [[String:String]])! {
                
                let food = FoodModel()
               food.afterSymptom = "\(res["feelBefore"]!)"
                food.beforeSymptom = "\(res["feelAfter"]!)"
               food.worry = "\(res["worry"]!)"
               food.companyToEat = "\(res["partner"]!)"
                food.placeYouAte = "\(res["location"]!)"
                food.mealType = "\(res["meal"]!)"
                food.foodImg = "https://people.cs.clemson.edu/~rraju/eoeScripts/eoeImgs/\(res["image"]!)"
                //print("\(food.foodImg)")

                foodArray.append(food)
            }
            
            tableview.reloadData()
            
        }
        
    }
    
    func FailureForGetFood(error: String) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
