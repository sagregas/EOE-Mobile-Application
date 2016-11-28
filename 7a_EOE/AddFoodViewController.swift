//
//  AddFoodViewController.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/19/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit
import MobileCoreServices

class AddFoodViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate,CoreDataHelperDelegate,PortalServiceDelegate {

    @IBOutlet weak var companyOutlet: UIButton!
    @IBOutlet weak var mealOutlet: UIButton!
    @IBOutlet weak var eatFoodOutlet: UIButton!
    @IBOutlet weak var afterSegment: UISegmentedControl!
    @IBOutlet weak var beforeSegemtn: UISegmentedControl!
    
    @IBOutlet weak var othersTextfield: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var heightOthers: NSLayoutConstraint!
    @IBOutlet weak var toolBar: UIToolbar!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var frontView: UIView!
    var PlacesToEat = [String]()
    var meal = [String]()
    var companyToEat = [String]()
    var decideArray = 0
    var imagePicker = UIImagePickerController()

    var   service = PortalService()
    
    var parent = "No"
    var worry = "No"
    
    var afterSegmentStr = ""
    var beforeSegmentStr = ""
    
    var  othersStr = " "
    
    var WhereDidYouEat = ""
    var whichMeal = ""
    var whoDidYouEat = ""
    
    @IBOutlet weak var imageView: UIImageView!
    var newMedia: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        PlacesToEat = ["Home","School","Restaurant"]
        meal = ["Breakfast","Lunch","Snack","Dinner"]
        companyToEat = ["Alone","Friends","Co-workers","Others"]
        heightOthers.constant = 0.0
        othersTextfield.hidden = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func eatThisFood(sender: AnyObject) {
        
        decideArray = 10
        self.pickerView.reloadAllComponents()
        showCustomPicker()
    }

    @IBAction func meal(sender: AnyObject) {
        decideArray = 20
        self.pickerView.reloadAllComponents()
        showCustomPicker()

    }
    
    @IBAction func eatWith(sender: AnyObject) {
        decideArray = 30
        self.pickerView.reloadAllComponents()
        showCustomPicker()

    }
    
    //segement
    
    @IBAction func BeforeSymptom(sender: AnyObject) {
        
        if beforeSegemtn.selectedSegmentIndex == 0 {
            beforeSegmentStr = "Symptoms"
        }else{
            beforeSegmentStr = "No Symptoms"

        }
    }
    
    @IBAction func afterSymptom(sender: AnyObject) {
        
        if afterSegment.selectedSegmentIndex == 0 {
            afterSegmentStr = "Symptoms"
        }else{
            afterSegmentStr = "No Symptoms"
            
        }
    }
    
    //switch
    
    @IBAction func MakeYoufeelBadSwitc(sender: UISwitch) {
        
        if sender.on{
            worry = "Yes"
 
        }else{
            worry = "No"

        }
        
        
       

    }
    
    @IBAction func parentSwitch(sender: UISwitch) {
        
        if sender.on{
            parent = "Yes"
            
        }else{
            parent = "No"
            
        }
    }
    
    //Picker done
    
    
    @IBAction func doneToolBar(sender: AnyObject) {
        
        hideCustomPicker()
        setTitleForButton(decideArray)
        
        if decideArray == 30{
        if companyToEat[pickerView.selectedRowInComponent(0)] == "Others"{
            
            print("\(companyOutlet.titleLabel?.text)")
            heightOthers.constant = 30.0
            othersTextfield.hidden = false
        }
        else{
            heightOthers.constant = 0.0
            othersTextfield.hidden = true
        }
        
        }
    }
    
    //MARK: - Pickers
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        return decideArray(decideArray).count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return decideArray(decideArray)[row]
    }
    
    //Tap gesture
    
    @IBAction func imageTap(sender: AnyObject) {
        
        let alert:UIAlertController=UIAlertController(title: "Choose Image", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: UIAlertActionStyle.Default)
        {
            UIAlertAction in
            self.openCamera()
        }
        let gallaryAction = UIAlertAction(title: "Gallery", style: UIAlertActionStyle.Default)
        {
            UIAlertAction in
            self.openGallary()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel)
        {
            UIAlertAction in
        }
        
        // Add the actions
        imagePicker.delegate = self
        alert.addAction(cameraAction)
        alert.addAction(gallaryAction)
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    
    
    }
    
    
    func decideArray(decide: Int)-> [String]{
        
        var tempArray = [String]()
        
        switch decideArray {
        case 10:
            tempArray = PlacesToEat
            break
        case 20:
            tempArray = meal
            break
        case 30:
            tempArray = companyToEat
            break
       
            
        default:
            break
        }
        
        return tempArray
        
    }
    
    func showCustomPicker(){
        
        self.scrollView.frame = CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height-260);
        self.frontView.userInteractionEnabled = false
        self.pickerView.hidden = false
        self.toolBar.hidden = false
        
    }
    
    func hideCustomPicker(){
        
        self.scrollView.frame=CGRectMake(0, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height+260);
        self.scrollView.contentSize=CGSizeMake(self.view.frame.size.width,1000);
        self.frontView.userInteractionEnabled = true
        self.pickerView.hidden = true
        self.toolBar.hidden = true
        
    }
    
    
    func setTitleForButton(decide:Int){
        switch decide {
        case 10:
            eatFoodOutlet.setTitle(PlacesToEat[pickerView.selectedRowInComponent(0)], forState: .Normal)
            eatFoodOutlet.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 20:
            mealOutlet.setTitle(meal[pickerView.selectedRowInComponent(0)], forState: .Normal)
            mealOutlet.setTitleColor(UIColor.blackColor(), forState: .Normal)
            break
        case 30:
            companyOutlet.setTitle(companyToEat[pickerView.selectedRowInComponent(0)], forState: .Normal)
            companyOutlet.setTitleColor(UIColor.blackColor(), forState: .Normal)
            
            break
        
            
            
        default:
            break
        }
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
    
    func openCamera()
    {
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera))
        {
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            self .presentViewController(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alertWarning = UIAlertView(title:"Warning", message: "You don't have camera", delegate:nil, cancelButtonTitle:"OK", otherButtonTitles:"")
            alertWarning.show()
        }
    }
    func openGallary()
    {
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    //PickerView Delegate Methods
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        
        var capturedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        let rect = CGRectMake(0, 0, capturedImage.size.width/6, capturedImage.size.height/6)
        UIGraphicsBeginImageContext(rect.size)
        capturedImage.drawInRect(rect)
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        let compressedImageData = UIImageJPEGRepresentation(resizedImage, 0.1)
        capturedImage = UIImage(data: compressedImageData!)!
        
        imageView.image = capturedImage
        imagePicker .dismissViewControllerAnimated(true, completion: nil)

        
        
    }
    
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController)
    {
        
        imagePicker .dismissViewControllerAnimated(true, completion: nil)

        print("picker cancel.")
    }
    
    
    @IBAction func done(sender: AnyObject) {
        
        if othersTextfield.text?.characters.count > 0 {
            othersStr = othersTextfield.text!
        }
        
        
        WhereDidYouEat = (eatFoodOutlet.titleLabel?.text)!
        whichMeal = (mealOutlet.titleLabel?.text)!
        whoDidYouEat = (companyOutlet.titleLabel?.text)!
        
        
        
        service.delegate = self
       service.uploadImage(imageView.image!)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - service Delegates
    
    func successForUploadImage(success: NSDictionary) {
        
        //print("\(success["fileLocation"])")
       service.insertFood("\(success["fileLocation"]!)", parent: parent, whereHome: WhereDidYouEat, whichMeal: whichMeal, whoAlone: whoDidYouEat, feelBefore: beforeSegmentStr, feelAfter: afterSegmentStr, allergic: worry, others: othersStr)
        
    }
    
    func FailureForUploadImage(error: String) {
        
    }
    
    func successForInsertFood(success: NSArray) {
        
        print("array:\(success)")
        let core = CoreDataHelper()
        core.delegate = self
        core.insertFoodItems(success)
       // alertViewFunc("successfully stored food data")
    }
    
    func FailureForInsertFood(error: String) {
        alertViewFunc("failed to store food data")
    }
    
    func successForInserfoodCore(success: String) {
        alertViewFunc("successfully stored food to db ")

    }
    
    func FailureForinsertFoodCore(error: String) {
        
    }
    
    func alertViewFunc(msg: String)  {
        
        
        let alertController = UIAlertController(title: "\(msg)", message: "", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }

}
