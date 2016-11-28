//
//  ReminderViewController.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/20/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {

    var decidePicker = -1
    
    @IBOutlet weak var qolOut: UIButton!
    @IBOutlet weak var symOut: UIButton!
    @IBOutlet weak var dinOut: UIButton!
    @IBOutlet weak var lunOut: UIButton!
    @IBOutlet weak var bfOut: UIButton!
    
    
    @IBOutlet weak var lunch: UISwitch!
    @IBOutlet weak var breakFast: UISwitch!
    @IBOutlet weak var customToolbar: UIToolbar!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var symptoms: UISwitch!
    @IBOutlet weak var dinner: UISwitch!
    @IBOutlet weak var frontView: UIView!
    
    @IBOutlet weak var qol: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switches()
        
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification.userInfo)")
        }
        // Do any additional setup after loading the view.
    }
    
    func switches(){
        
    
        if NSUserDefaults.standardUserDefaults().valueForKey("Bf") != nil
        {
            let bf = "\(NSUserDefaults.standardUserDefaults().valueForKey("Bf")!)"

            if ( bf == "On" && bf.characters.count>0) {
                breakFast.setOn(true, animated: false)
                
            }else{
                breakFast.setOn(false, animated: false)
                
            }
            
            
        }else{
            breakFast.setOn(false, animated: false)

        }
        
        
        if NSUserDefaults.standardUserDefaults().valueForKey("Lunch") != nil
        {
            let bf = "\(NSUserDefaults.standardUserDefaults().valueForKey("Lunch")!)"
            
            if ( bf == "On" && bf.characters.count>0) {
                lunch.setOn(true, animated: false)
                
            }else{
                lunch.setOn(false, animated: false)
                
            }
            
            
        }else{
            lunch.setOn(false, animated: false)
            
        }
        
        if NSUserDefaults.standardUserDefaults().valueForKey("Dinner") != nil
        {
            let Dinner = "\(NSUserDefaults.standardUserDefaults().valueForKey("Dinner")!)"
            
            if ( Dinner == "On" && Dinner.characters.count>0) {
                dinner.setOn(true, animated: false)
                
            }else{
                dinner.setOn(false, animated: false)
                
            }
            
            
        }else{
            dinner.setOn(false, animated: false)
            
        }
        
        
        
        if NSUserDefaults.standardUserDefaults().valueForKey("Symptoms") != nil
        {
            let Symptoms = "\(NSUserDefaults.standardUserDefaults().valueForKey("Symptoms")!)"
            
            if ( Symptoms == "On" && Symptoms.characters.count>0) {
                symptoms.setOn(true, animated: false)
                
            }else{
                symptoms.setOn(false, animated: false)
                
            }
            
            
        }else{
            symptoms.setOn(false, animated: false)
            
        }
       
        
        if NSUserDefaults.standardUserDefaults().valueForKey("QOL") != nil
        {
            let QOL = "\(NSUserDefaults.standardUserDefaults().valueForKey("QOL")!)"
            
            if ( QOL == "On" && QOL.characters.count>0) {
                qol.setOn(true, animated: false)
                
            }else{
                qol.setOn(false, animated: false)
                
            }
            
            
        }else{
            qol.setOn(false, animated: false)
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification)")
        }
        
        
    }
    
    @IBAction func Breakfast(sender: UISwitch) {
        
        
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Bf")
            decidePicker = 1
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Bf")

            
        }
}
    
    @IBAction func Lunch(sender: UISwitch) {
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Lunch")

            decidePicker = 2
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Lunch")
 
        }
  
    }
    
    @IBAction func Dinner(sender: UISwitch) {
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Dinner")

            decidePicker = 3
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Dinner")

        }
    
    }

    @IBAction func Symptoms(sender: UISwitch) {
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Symptoms")

            decidePicker = 4
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Symptoms")

        }
       
    }
    
    
    
    @IBAction func reminders(sender: UISwitch) {
        
        
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "QOL")

            decidePicker = 5
            showCustomPicker()
            self.datePicker.reloadInputViews()
 
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "QOL")
 
        }
}
    
    
    
    @IBAction func Done(sender: AnyObject) {
        
        
        
        switch decidePicker {
        case 1:
            scheduleNotification("Breakfast reminder", date: dateFormatter(self.datePicker.date))
            break
        case 2:scheduleNotification("Lunch reminder", date: dateFormatter(self.datePicker.date))
            break
        case 3:scheduleNotification("Dinner reminder", date: dateFormatter(self.datePicker.date))
            break
        case 4:scheduleNotification("Symptoms reminder", date: dateFormatter(self.datePicker.date))
            break
        case 5:scheduleNotification("QOL reminder", date: dateFormatter(self.datePicker.date))
            break
        default:
            break
        }
        
      //  UIApplication.sharedApplication().scheduledLocalNotifications as! [UILocalNotification]
     //   UIApplication.sharedApplication().cancelLocalNotification(notification)

        hideCustomPicker()
        setButtonTitle()
        
        
    }
    
    func dateFormatter(date: NSDate)-> NSDate{
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = NSDateFormatterStyle.MediumStyle //Set time style
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle //Set date style
        dateFormatter.timeZone = NSTimeZone(name: "EST")
        let strDate = dateFormatter.stringFromDate(date)
        return dateFormatter.dateFromString(strDate)!
    }
    
    
    func setButtonTitle(){
        switch decidePicker {
        case 1:
            
            bfOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        case 2:
            lunOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        case 3:
            dinOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        case 4:
            symOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        case 5:
            qolOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        default:
            break
        }
    }
    
    func showCustomPicker(){
        
        self.scrollView.frame = CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height-260);
        self.frontView.userInteractionEnabled = false
        self.datePicker.hidden = false
        self.customToolbar.hidden = false
        
    }
    
    func hideCustomPicker(){
        
        self.scrollView.frame=CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height+260);
        self.scrollView.contentSize=CGSizeMake(self.view.frame.size.width,1000);
        self.frontView.userInteractionEnabled = true
        self.datePicker.hidden = true
        self.customToolbar.hidden = true
        
    }
    
    
    
    func scheduleNotification(alert: String,date: NSDate ){
        print("date:\(date)")
        let localNotification = UILocalNotification()
        localNotification.fireDate = date
        //localNotification.alertBody = alert
        localNotification.alertTitle = alert
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification.alertBody)")
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
