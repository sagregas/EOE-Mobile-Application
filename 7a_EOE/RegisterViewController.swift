//
//  RegisterViewController.swift
//  7a_EOE
//


import UIKit

class RegisterViewController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource,PortalServiceDelegate {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var viewForActivityIndicator: UIView!
    @IBOutlet weak var householdBtn: UIButton!
    @IBOutlet weak var motherBtn: UIButton!
    @IBOutlet weak var fatherBtn: UIButton!
    @IBOutlet weak var EOEBtn: UIButton!
    @IBOutlet weak var gradebtn: UIButton!
    @IBOutlet weak var hispanicBtn: UIButton!
    @IBOutlet weak var raceBtn: UIButton!
    @IBOutlet weak var genderBtn: UIButton!
    @IBOutlet weak var DobBtn: UIButton!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateToolbar: UIToolbar!
    
    @IBOutlet weak var customPicker: UIPickerView!
    @IBOutlet weak var customToolbar: UIToolbar!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var frontView: UIView!
    
    var coreData = CoreDataHelper()

    var genderArray = [String]()
    var raceArray = [String]()
    var gradeArray = [String]()
    var EoEArray = [String]()
    var EducationArray = [String]()
    var incomeArray = [String]()
    var hispanic = [String]()
    
    var decideArray = 0
    
    var service = PortalService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        genderArray = ["Male","Female"]
        raceArray = ["White","Black or African American","Asian","Pacific Islander","Other"]
        gradeArray = ["Pre-school","Kindergarten","1st","2nd","3rd","4th","5th","6th","7th","8th","9th","10th","11th","12th"]
        hispanic = ["Yes","No"]
        EducationArray = ["Less than 9th grade","9-12th no diploma","High school graduate(or GED/equilavent)","Associate's Degree or Vocational training","Some college(No degree)","Bachelor's degree","Graduate or professional degree"]
        incomeArray = ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999,","$35,000 to $49,999","$75,000 to $99,999","100,000 or more"]
        EoEArray = ["Less than a year","1-5 years","More than 5 years"]
        
        self.datePicker.backgroundColor = UIColor.grayColor()
          self.customPicker.backgroundColor = UIColor.grayColor()
        hideUnhideActivity(true)
        
       // NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector(showDatePicker()), name: UIKeyboardDidHideNotification, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Confirm(sender: AnyObject) {
        
        
         if nameTxt.text?.characters.count>0 && passwordTxt.text?.characters.count>0 && emailTxt.text?.characters.count>0 {
         
        service.delegate = self
        service.insertUserNameAndPassword(nameTxt.text!, password: passwordTxt.text!, email: emailTxt.text!, DOB: (DobBtn.titleLabel?.text)!, gender: (genderBtn.titleLabel?.text)!, race: (raceBtn.titleLabel?.text)!, hispanic: (hispanicBtn.titleLabel?.text)!, grade: (gradebtn.titleLabel?.text)!, eoe: (EOEBtn.titleLabel?.text)!
            , father: (fatherBtn.titleLabel?.text)!, mother: (motherBtn.titleLabel?.text)!, income: (householdBtn.titleLabel?.text)!)
            
            hideUnhideActivity(false)
         }else{
            
           alertViewFunc("Please fill all the fields")
        }
    }
    
    
    
    
    @IBAction func tap(sender: AnyObject) {
        resign()
    }
    @IBAction func DOBbtn(sender: AnyObject) {
    
        showDatePicker()
    }
    
    
    func showDatePicker(){
     // resign()

    
       UIView.animateWithDuration(0, animations: { 
                    self.emailTxt.resignFirstResponder()
            self.passwordTxt.resignFirstResponder()
                    self.nameTxt.resignFirstResponder()
        }) { (Bool) in
            
            self.frontView.userInteractionEnabled = false
            self.datePicker.hidden = false
            self.dateToolbar.hidden = false
            self.scrollView.frame = CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height-260);
        }
            
                      

           
//            self.emailTxt.resignFirstResponder()
//            self.passwordTxt.resignFirstResponder()
//            self.nameTxt.resignFirstResponder()
//            
        
        
      
       

        
        
    }
    
    func resign(){
       
        //showDatePicker()

    }
    
    func hideDatePicker(){
        
        self.scrollView.frame=CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height+260);
        self.scrollView.contentSize=CGSizeMake(self.view.frame.size.width,1000);
        self.frontView.userInteractionEnabled = true
        self.datePicker.hidden = true
        self.dateToolbar.hidden = true
        
    }
    
   
    
    func showCustomPicker(){
        
      
        UIView.animateWithDuration(0, animations: {
            self.emailTxt.resignFirstResponder()
            self.passwordTxt.resignFirstResponder()
            self.nameTxt.resignFirstResponder()
        }) { (Bool) in
            
            self.scrollView.frame = CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height-260);
            self.frontView.userInteractionEnabled = false
            self.customPicker.hidden = false
            self.customToolbar.hidden = false
        }
    }
    
    func hideCustomPicker(){
        
        self.scrollView.frame=CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height+260);
        self.scrollView.contentSize=CGSizeMake(self.view.frame.size.width,1000);
        self.frontView.userInteractionEnabled = true
        self.customPicker.hidden = true
        self.customToolbar.hidden = true
        
    }
    
    
    
    @IBAction func gender(sender: AnyObject) {
        
        decideArray = 10
        showCustomPicker()
        customPicker.reloadAllComponents()
    }
    
    @IBAction func raceBtn(sender: AnyObject) {
        decideArray = 20
        showCustomPicker()
        customPicker.reloadAllComponents()

        
    }

    @IBAction func hispanicBtn(sender: AnyObject) {
        decideArray = 30
        showCustomPicker()
        customPicker.reloadAllComponents()

        
    }
    
    
    
     @IBAction func gradeBtn(sender: AnyObject) {
        
        decideArray = 40
        showCustomPicker()
        customPicker.reloadAllComponents()

     }
    
    
    @IBAction func eoe(sender: AnyObject) {
        decideArray = 50

        showCustomPicker()
        customPicker.reloadAllComponents()

    }
    
    
    @IBAction func fatherBtn(sender: AnyObject) {
        
        decideArray = 60
        showCustomPicker()
        customPicker.reloadAllComponents()

    }
    
    @IBAction func motherBtn(sender: AnyObject) {
        decideArray = 70
        showCustomPicker()
        customPicker.reloadAllComponents()

        
    }
    
    @IBAction func houseHoldBtn(sender: AnyObject) {
        decideArray = 80
        showCustomPicker()
        customPicker.reloadAllComponents()

        
    }
    
    //MARK : Done
    
    @IBAction func dateDone(sender: AnyObject) {
        
        hideDatePicker()
        
        let date = self.datePicker.date
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateFormatter.stringFromDate(date)
        
        DobBtn.setTitle(dateString
            , forState: .Normal)
        DobBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
 
        
    }
    
    @IBAction func CustomDone(sender: AnyObject) {
        hideCustomPicker()
        setTitleForButton(decideArray)
        
    }
    
    //MARK: Picker delegates
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
       let arrayPicker  = decideArray(decideArray)
        
        
        return arrayPicker.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let arrayPicker  = decideArray(decideArray)
        return arrayPicker[row]
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func decideArray(decide: Int)-> [String]{
       
        var tempArray = [String]()
        
        switch decideArray {
        case 10:
            tempArray = genderArray
            break
        case 20:
            tempArray = raceArray
            break
        case 30:
            tempArray = hispanic
            break
        case 40:
            tempArray = gradeArray
            break
        case 50:
            tempArray = EoEArray
            break
        case 60:
            tempArray = EducationArray
            break
        case 70:
            tempArray = EducationArray
            break
        case 80:
            tempArray = incomeArray
            break
        
            
        default:
            break
        }
        
        return tempArray
        
    }
    
    
    func setTitleForButton(decide:Int){
        switch decide {
        case 10:
            genderBtn.setTitle(genderArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
            genderBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 20:
            raceBtn.setTitle(raceArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
              raceBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 30:
            hispanicBtn.setTitle(hispanic[customPicker.selectedRowInComponent(0)], forState: .Normal)
              hispanicBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 40:
            gradebtn.setTitle(gradeArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
              gradebtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 50:
            EOEBtn.setTitle(EoEArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
              EOEBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 60:
            fatherBtn.setTitle(EducationArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
              fatherBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 70:
            
            motherBtn.setTitle(EducationArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
              motherBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 80:
            
        householdBtn.setTitle(incomeArray[customPicker.selectedRowInComponent(0)], forState: .Normal)
          householdBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
            
            
        default:
            break
        }
        
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    //MARK textfield delegates
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
  
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.emailTxt.resignFirstResponder()
        nameTxt.resignFirstResponder()
        passwordTxt.resignFirstResponder()
    }
    
    //MARK: service delegates
    
    func successForInsertuser(success: String) {
        
        coreData.deleteAllData("Food")

        
        print("success:\(success)")
        
                let appDomain = NSBundle.mainBundle().bundleIdentifier!
                NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain)
                NSUserDefaults.standardUserDefaults().synchronize()

        
        hideUnhideActivity(true)

        if success.characters.count > 0  {
            
            
            
            NSUserDefaults.standardUserDefaults().setValue(success, forKey: "UserId")
            performSegueWithIdentifier("home", sender: self)
            
            
        }
        else
        {
            service.delegate = self
            service.insertUserNameAndPassword(nameTxt.text!, password: passwordTxt.text!, email: emailTxt.text!, DOB: (DobBtn.titleLabel?.text)!, gender: (genderBtn.titleLabel?.text)!, race: (raceBtn.titleLabel?.text)!, hispanic: (hispanicBtn.titleLabel?.text)!, grade: (gradebtn.titleLabel?.text)!, eoe: (EOEBtn.titleLabel?.text)!
                , father: (fatherBtn.titleLabel?.text)!, mother: (motherBtn.titleLabel?.text)!, income: (householdBtn.titleLabel?.text)!)
            
            hideUnhideActivity(false)
        }
        
        

    }
    
    func FailureForInsertuser(error: String) {
        hideUnhideActivity(true)
        alertViewFunc("Please try registering again")

        print("failed")
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
            self.view.bringSubviewToFront(self.viewForActivityIndicator)
            // activityIndicator.center = scrollView.center
            activityIndicator.startAnimating()
        }else{
            
            self.viewForActivityIndicator.center = self.scrollView.center
            dispatch_async(dispatch_get_main_queue(), {
                self.view.bringSubviewToFront(self.scrollView)
                self.activityIndicator.stopAnimating()
                self.viewForActivityIndicator.hidden = bool
                // self.viewForActivityIndicator.removeFromSuperview()
            })
        }
    }

    
    func textFieldDidEndEditing(textField: UITextField) {
        textField.resignFirstResponder()
    }
}
