//
//  ViewController.swift
//  7a_EOE
//
//

import UIKit

class ViewController: UIViewController,PortalServiceDelegate,UITextFieldDelegate {

    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var viewForActivityIndicator: UIView!
    @IBOutlet weak var passwordTxt: UITextField!
    var service = PortalService()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.setHidesBackButton(true, animated:true);

    }

    @IBAction func Login(sender: AnyObject) {
//        
//        let emailTxtWoWhite = emailTxt.text!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//        let passTxtWoWhite = passwordTxt.text!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//
        if emailTxt.text!.characters.count>0 && passwordTxt.text!.characters.count>0{
                    service.delegate = self
                    service.SelectUserNameAndPassword(emailTxt.text!, password: passwordTxt.text!)
            hideUnhideActivity(false)
            
            
            
        }else{
            alertViewFunc("Please fill all the fields")

        }
        
//        service.delegate = self
//        service.SelectUserNameAndPassword(emailTxt.text!, password: passwordTxt.text!)
        
        
     //  performSegueWithIdentifier("home", sender: self)
      //  service.insertQOL()

        
        
    }
    
    
    
    
    @IBAction func Register(sender: AnyObject) {
        
        performSegueWithIdentifier("register", sender: self)
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.emailTxt.resignFirstResponder()
        self.passwordTxt.resignFirstResponder()
    }
    
    func successForSelectuser(success: NSDictionary) {
        
        print("success:\(success)")
        
        hideUnhideActivity(true)
        print("\(NSUserDefaults.standardUserDefaults().valueForKey("UserId"))")
        
        if NSUserDefaults.standardUserDefaults().valueForKey("UserId") != nil{
           
            
        
            NSUserDefaults.standardUserDefaults().setValue(success["patientID"], forKey: "UserId")

                performSegueWithIdentifier("home", sender: self)
            
        }else{
            
            let appDomain = NSBundle.mainBundle().bundleIdentifier!
            NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain)
            NSUserDefaults.standardUserDefaults().synchronize()
            
            NSUserDefaults.standardUserDefaults().setValue(success["patientID"], forKey: "UserId")
            performSegueWithIdentifier("home", sender: self)

        }
        
        

    }
    
    func FailureForSelectuser(error: String) {
        
        hideUnhideActivity(true)

        alertViewFunc("Failed to login")
     //   print("failed)")
        
    }
    
    
    func alertViewFunc(msg: String)  {
        
        
        let alertController = UIAlertController(title: "\(msg)", message: "", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    func hideUnhideActivity(bool: Bool){
        
        viewForActivityIndicator.hidden = bool
        
        if bool == false {
            activityIndicator.startAnimating()
        }else{
            
            dispatch_async(dispatch_get_main_queue(), {
                self.activityIndicator.stopAnimating()
                
            })
            
        }
        
        
    }
    
}

