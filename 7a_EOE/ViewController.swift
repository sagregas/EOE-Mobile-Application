//
//  ViewController.swift
//  7a_EOE
//
//

import UIKit

class ViewController: UIViewController,PortalServiceDelegate,UITextFieldDelegate {

    @IBOutlet weak var emailTxt: UITextField!
    
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

    @IBAction func Login(sender: AnyObject) {
//        
//        let emailTxtWoWhite = emailTxt.text!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//        let passTxtWoWhite = passwordTxt.text!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//        
//        if emailTxtWoWhite.characters.count>0 && passTxtWoWhite.characters.count>0{
//                    service.delegate = self
//                    service.SelectUserNameAndPassword(emailTxt.text!, password: passwordTxt.text!)
//            
//            
//            
//            
//        }else{
//            alertViewFunc("Please fill all the fields")
//
//        }
        
        service.delegate = self
        service.SelectUserNameAndPassword(emailTxt.text!, password: passwordTxt.text!)
        
        
     //  performSegueWithIdentifier("home", sender: self)
      //  service.insertQOL()

        
        
    }
    
    
    
    
    @IBAction func Register(sender: AnyObject) {
        
        performSegueWithIdentifier("register", sender: self)
    }

    
    func successForSelectuser(success: NSDictionary) {
        
        print("success:\(success)")
        
        
        
        NSUserDefaults.standardUserDefaults().setValue(success["patientID"], forKey: "UserId")
    performSegueWithIdentifier("home", sender: self)

    }
    
    func FailureForSelectuser(error: String) {
        
      
        alertViewFunc("Failed to login")
     //   print("failed)")
        
    }
    
    
    func alertViewFunc(msg: String)  {
        
        
        let alertController = UIAlertController(title: "\(msg)", message: "", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
}

