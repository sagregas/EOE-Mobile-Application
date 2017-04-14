//
//  DisplayFoodViewController.swift
//  7a_EOE
//

import UIKit
import SDWebImage

class DisplayFoodViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,PortalServiceDelegate,CoreDataHelperDelegate {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var viewForActivityIndicator: UIView!
    var foodArray = [FoodModel]()
    var core = CoreDataHelper()
    var service = PortalService()
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        hideUnhideActivity(true)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
       
        
        core.delegate = self

        core.retriveFood()

        hideUnhideActivity(false)
    }
    
    func successForGetFood(success: NSArray) {
        
        if success.count > 0{
            core.insertFoodItems(success)
        }
        
        
    }
    
    
    
    func successForInserfoodCore(success: String) {
        core.retriveFood()

    }
    
    func FailureForinsertFoodCore(error: String) {
        
    }
    
    
    func FailureForGetFood(error: String) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(sender: AnyObject) {
        performSegueWithIdentifier("add", sender: self)
    }
    
   
    
    func successForRetfoodCore(success: NSArray) {
        
        if success.count < 0 {
            service.delegate = self
            service.getFoodDiary()
        }else{
            foodArray = []
            foodArray = success as! [FoodModel]
            hideUnhideActivity(true)
            
            self.tableview.reloadData()
        }
       
    }
    
    func FailureForRetFoodCore(error: String) {
        service.delegate = self
        service.getFoodDiary()
        hideUnhideActivity(true)

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        var foodModel = FoodModel()
        
        foodModel = foodArray[indexPath.row]
        
        
        cell.mealType.text = "Meal type: \(foodModel.mealType!)"
        cell.company.text = "Company: \(foodModel.companyToEat!)"
        cell.placeEat.text = "Place: \(foodModel.placeYouAte!)"
        cell.beforeSymp.text = "Before symptom: \(foodModel.beforeSymptom!)"
        cell.afterSymp.text = "After symptom: \(foodModel.afterSymptom!)"
        cell.worried.text = "Worried: \(foodModel.worry!)"
        print("foodModelStr:\(foodModel.foodImg!)")
        
        let url : NSString = foodModel.foodImg!
        let urlStr : NSString = url.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        let searchURL : NSURL = NSURL(string: urlStr as String)!
        print("serach:\(searchURL)")
      

        cell.foodImg?.sd_setImageWithURL(searchURL, placeholderImage:UIImage(named: "Food_vector_icon_restaurant_pixel_perfect"))
        return cell
    }
    

    
    func hideUnhideActivity(bool: Bool){
        
        viewForActivityIndicator.hidden = bool
        
        if bool == false {
           
            // activityIndicator.center = scrollView.center
            activityIndicator.startAnimating()
        }else{
            
            dispatch_async(dispatch_get_main_queue(), {
                
                self.activityIndicator.stopAnimating()
                self.viewForActivityIndicator.hidden = bool
                // self.viewForActivityIndicator.removeFromSuperview()
            })
        }
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
