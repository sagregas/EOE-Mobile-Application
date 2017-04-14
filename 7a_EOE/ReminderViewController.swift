//
//  ReminderViewController.swift
//  7a_EOE
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
    
    @IBOutlet weak var bfHeight: NSLayoutConstraint!
    @IBOutlet weak var bfView: UIView!
    
    
    @IBOutlet weak var lunchHeight: NSLayoutConstraint!
    
    @IBOutlet weak var lunchView: UIView!
    
    @IBOutlet weak var dinView: UIView!
    @IBOutlet weak var dinHeight: NSLayoutConstraint!
    
    @IBOutlet weak var sympHeight: NSLayoutConstraint!
    
    @IBOutlet weak var sympView: UIView!
    
    
    @IBOutlet weak var qolHeight: NSLayoutConstraint!
    @IBOutlet weak var qolView: UIView!
    
    override func viewDidLoad() {
        
        hideAllViews()

        super.viewDidLoad()
        switches()
        self.datePicker.backgroundColor = UIColor.lightGrayColor()
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification.userInfo)")
        }
        
       // allNotifiaction()
        // Do any additional setup after loading the view.
    }
    
    func DeleteNotifiaction(name: String){
        
        let app:UIApplication = UIApplication.sharedApplication()
        for oneEvent in app.scheduledLocalNotifications! {
            let notification = oneEvent as UILocalNotification
            let userInfoCurrent = notification.userInfo! as! [String:AnyObject]
            let dict  = userInfoCurrent.keys.first
            
            
            print("userInfo:\(userInfoCurrent)")
            
            if dict  == name {
                let uid = userInfoCurrent[name]!.intValue

                if uid  == 1 {
                    //Cancelling local notification
                    app.cancelLocalNotification(notification)
                    break;
                }else if uid == 2{
                    app.cancelLocalNotification(notification)
                    break;
                    
                }else if uid == 3{
                    app.cancelLocalNotification(notification)
                    break;
                }else if uid == 4{
                    app.cancelLocalNotification(notification)
                    break;
                }else if uid == 5{
                    app.cancelLocalNotification(notification)
                    break;
                }

            }
            
                        print("userInfo:\(oneEvent)")
           
        }
    }
    
    func switches(){
      //edit
    
        if NSUserDefaults.standardUserDefaults().valueForKey("Bf") != nil
        {
            let bf = "\(NSUserDefaults.standardUserDefaults().valueForKey("Bf")!)"

            if ( bf == "On" && bf.characters.count>0) {
                
                breakFast.setOn(true, animated: false)
                
                
                bfHeight.constant = 101.0
                bfView.hidden = false
                if NSUserDefaults.standardUserDefaults().valueForKey("BfDate") != nil
                {
                    bfOut.setTitle("\(NSUserDefaults.standardUserDefaults().valueForKey("BfDate")!)", forState: .Normal)
                    
                }
                

            }else{
                
                //NSUserDefaults.standardUserDefaults().setValue("Breakfast reminder", forKeyPath: "bfName")
            
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
                
                lunchHeight.constant = 102.0
                lunchView.hidden = false
                if NSUserDefaults.standardUserDefaults().valueForKey("LunDate") != nil
                {
                    lunOut.setTitle("\(NSUserDefaults.standardUserDefaults().valueForKey("LunDate")!)", forState: .Normal)
                    
                }
                
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
                dinHeight.constant = 113.0
                dinView.hidden = false
                if NSUserDefaults.standardUserDefaults().valueForKey("DinDate") != nil
                {
                    dinOut.setTitle("\(NSUserDefaults.standardUserDefaults().valueForKey("DinDate")!)", forState: .Normal)
                    
                }
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
                sympHeight.constant = 97.0
                sympView.hidden = false
                if NSUserDefaults.standardUserDefaults().valueForKey("SymDate") != nil
                {
                    symOut.setTitle("\(NSUserDefaults.standardUserDefaults().valueForKey("SymDate")!)", forState: .Normal)
                    
                }
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
                qolHeight.constant = 124.0
                qolView.hidden = false
                if NSUserDefaults.standardUserDefaults().valueForKey("QolDate") != nil
                {
                    qolOut.setTitle("\(NSUserDefaults.standardUserDefaults().valueForKey("QolDate")!)", forState: .Normal)
                    
                }
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
    
    func hideAllViews(){
        bfHeight.constant = 0.0
        bfView.hidden = true
        qolHeight.constant = 0.0
        qolView.hidden = true
        bfHeight.constant = 0.0
        bfView.hidden = true
        lunchHeight.constant = 0.0
        lunchView.hidden = true
        sympHeight.constant = 0.0
        sympView.hidden = true
        dinHeight.constant = 0.0
        dinView.hidden = true
    }
    
    @IBAction func Breakfast(sender: UISwitch) {
        
        
        if sender.on {
            
            bfHeight.constant = 101.0
            bfView.hidden = false
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Bf")
            decidePicker = 1
            showCustomPicker()
            
                
            
            self.datePicker.reloadInputViews()
            
            
        }else{
            
            bfHeight.constant = 0.0
            bfView.hidden = true
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Bf")
            DeleteNotifiaction(NSUserDefaults.standardUserDefaults().valueForKey("bfName") as! String)
            
        }
}
    
    @IBAction func Lunch(sender: UISwitch) {
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Lunch")
            lunchHeight.constant = 102.0
            lunchView.hidden = false
            decidePicker = 2
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Lunch")
            lunchHeight.constant = 0.0
            lunchView.hidden = true
            DeleteNotifiaction(NSUserDefaults.standardUserDefaults().valueForKey("LunName") as! String)

        }
  
    }
    
    @IBAction func Dinner(sender: UISwitch) {
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Dinner")
            dinHeight.constant = 113.0
            dinView.hidden = false
            decidePicker = 3
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            dinHeight.constant = 0.0
            dinView.hidden = true
            DeleteNotifiaction(NSUserDefaults.standardUserDefaults().valueForKey("DinName") as! String)

            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Dinner")

        }
    
    }

    @IBAction func Symptoms(sender: UISwitch) {
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "Symptoms")
            sympHeight.constant = 97.0
            sympView.hidden = false
            decidePicker = 4
            showCustomPicker()
            self.datePicker.reloadInputViews()
        }else{
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "Symptoms")
            sympHeight.constant = 0.0
            sympView.hidden = true
            DeleteNotifiaction(NSUserDefaults.standardUserDefaults().valueForKey("SymName") as! String)

        }
       
    }
    
    
    
    @IBAction func reminders(sender: UISwitch) {
        
        
        if sender.on {
            NSUserDefaults.standardUserDefaults().setValue("On", forKey: "QOL")
            qolHeight.constant = 124.0
            qolView.hidden = false
            decidePicker = 5
            showCustomPicker()
            self.datePicker.reloadInputViews()
 
        }else{
            qolHeight.constant = 0.0
            qolView.hidden = true
            NSUserDefaults.standardUserDefaults().setValue("Off", forKey: "QOL")
            DeleteNotifiaction(NSUserDefaults.standardUserDefaults().valueForKey("QolName") as! String)

        }
}
    
    
    
    @IBAction func Done(sender: AnyObject) {
        
        switch decidePicker {
        case 1:
        //    scheduleNotification("Breakfast reminder", date: dateFormatter(self.datePicker.date))
            NSUserDefaults.standardUserDefaults().setValue("Breakfast reminder", forKeyPath: "bfName")
            scheduleNotification("Breakfast reminder", date: self.datePicker.date, num: 1)
            break
        case 2:
            NSUserDefaults.standardUserDefaults().setValue("Lunch reminder", forKeyPath: "LunName")

            //scheduleNotification("Lunch reminder", date: dateFormatter(self.datePicker.date))
        scheduleNotification("Lunch reminder", date: self.datePicker.date, num: 2)

            break
        case 3:
            NSUserDefaults.standardUserDefaults().setValue("Dinner reminder", forKeyPath: "DinName")

            scheduleNotification("Dinner reminder", date: self.datePicker.date, num: 3)
            //scheduleNotification("Dinner reminder", date: dateFormatter(self.datePicker.date))
            break
        case 4:
            NSUserDefaults.standardUserDefaults().setValue("Symptoms reminder", forKeyPath: "SymName")
            scheduleNotificationWeekly("Symptoms reminder", date: self.datePicker.date, num: 4)//scheduleNotificationWeekly("Symptoms reminder", date: dateFormatter(self.datePicker.date))
            break
        case 5:
            NSUserDefaults.standardUserDefaults().setValue("QOL reminder", forKeyPath: "QolName")
            scheduleNotificationMonthly("QOL reminder", date: self.datePicker.date, num: 5)//scheduleNotificationWeekly("Symptoms reminder", date: dateFormatter(self.datePicker.date))
           // scheduleNotificationMonthly("QOL reminder", date: dateFormatter(self.datePicker.date))
            break
        default:
            break
        }
        
      //  UIApplication.sharedApplication().scheduledLocalNotifications as! [UILocalNotification]
     //   UIApplication.sharedApplication().cancelLocalNotification(notification)

        hideCustomPicker()
      //  setButtonTitle()
        
        
    }
    
    func dateFormatter(date: NSDate)-> String{
        

        print("date before:\(date)")
        let formatter = NSDateFormatter()
        formatter.timeZone = NSTimeZone.localTimeZone()
        formatter.locale =  NSLocale(localeIdentifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a"
        let DateVal = formatter.stringFromDate(date)
        //print("date after:\(DateVal)")
        //print("date after:\(strDate)")
        return DateVal
        
    }
    
    
    func dateFormatterWoDate(date: NSDate)-> NSString{
        
        
        print("date before:\(date)")
        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        let DateVal = formatter.stringFromDate(date)
        print("date after:\(DateVal)")
      
        return DateVal
        
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
    
    
    
    func scheduleNotification(alert: String,date: NSDate ,num: Int){
        print("date:\(date)")
        let localNotification = UILocalNotification()
        localNotification.fireDate = date
        localNotification.repeatInterval = NSCalendarUnit.Day
        localNotification.alertBody = alert
        localNotification.alertTitle = alert
        localNotification.userInfo = [alert:num]

        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification.alertBody)")
        }
        
      settitle()

    }
    
    
    func settitle(){
        switch decidePicker {
        case 1:
            NSUserDefaults.standardUserDefaults().setValue("\(dateFormatterWoDate(datePicker.date))", forKeyPath: "BfDate")
            bfOut.setTitle("\(dateFormatterWoDate(datePicker.date))", forState: .Normal)
            break
        case 2:
            
             NSUserDefaults.standardUserDefaults().setValue("\(dateFormatterWoDate(datePicker.date))", forKeyPath: "LunDate")
             
             
            lunOut.setTitle("\(dateFormatterWoDate(datePicker.date))", forState: .Normal)
            break
        case 3:
             NSUserDefaults.standardUserDefaults().setValue("\(dateFormatterWoDate(datePicker.date))", forKeyPath: "DinDate")
            dinOut.setTitle("\(dateFormatterWoDate(datePicker.date))", forState: .Normal)
            break
        case 4:
              NSUserDefaults.standardUserDefaults().setValue("\(dateFormatter(datePicker.date))", forKeyPath: "SymDate")
            symOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        case 5:
            NSUserDefaults.standardUserDefaults().setValue("\(dateFormatter(datePicker.date))", forKeyPath: "QolDate")

            qolOut.setTitle("\(dateFormatter(datePicker.date))", forState: .Normal)
            break
        default:
            break
        }
        
    }
    
    func scheduleNotificationMonthly(alert: String,date: NSDate,num: Int ){
        print("date:\(date)")
        let localNotification = UILocalNotification()
        localNotification.fireDate = date
       // localNotification.repeatInterval = NSCalendarUnit.Month
        localNotification.alertBody = alert
        localNotification.alertTitle = alert
        localNotification.userInfo = [alert:num]

        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification)")
        }
       settitle()
       
    }

    func scheduleNotificationWeekly(alert: String,date: NSDate,num: Int  ){
        print("date:\(date)")
        let localNotification = UILocalNotification()
        localNotification.fireDate = date
      //  localNotification.repeatInterval = NSCalendarUnit.WeekOfMonth
        localNotification.alertBody = alert
        localNotification.alertTitle = alert
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        localNotification.userInfo = [alert:num]

        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        for notification in UIApplication.sharedApplication().scheduledLocalNotifications!{
            print("notic:\(notification.alertBody)")
        }
       settitle()
    
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
