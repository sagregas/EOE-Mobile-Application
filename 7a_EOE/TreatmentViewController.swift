//
//  TreatmentViewController.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/20/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit

class TreatmentViewController: UIViewController,PortalServiceDelegate,UITextFieldDelegate {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var viewForActivityIndicator: UIView!
    @IBOutlet weak var eliminationText: UITextField!
    
    @IBOutlet weak var foodCurrentlyEating: UITextField!
    
    @IBOutlet weak var foodEliminationHeight: NSLayoutConstraint!
    
    @IBOutlet weak var foodEliminationView: UIView!
    
    @IBOutlet weak var eliminationBased: NSLayoutConstraint!
    
    @IBOutlet weak var eliminationBasedView: UIView!
    
    @IBOutlet weak var eliminatingText: NSLayoutConstraint!
    
    @IBOutlet weak var eliminatinationTextView: UIView!
    
    @IBOutlet weak var supplementalHeight: NSLayoutConstraint!
    
    @IBOutlet weak var supplementalView: UIView!
    @IBOutlet weak var foodTrailsHeight: NSLayoutConstraint!
    
    @IBOutlet weak var foodTrailsView: UIView!
    @IBOutlet weak var elementaryDietHeight: NSLayoutConstraint!
    
    @IBOutlet weak var elementaryDietView: UIStackView!
    
    
    @IBOutlet weak var takingSteriodsSwitch: UISwitch!
    
    @IBOutlet weak var dietaryTherapiesSwitch: UISwitch!
    
    @IBOutlet weak var foodEliminationSwitch: UISwitch!
    
    @IBOutlet weak var eliminationDeitSwitch: UISwitch!
    
    @IBOutlet weak var foodTrailTextView: UIView!
    
    @IBOutlet weak var foodTrailTextHeight: NSLayoutConstraint!
    
    var service = PortalService()
    
    //variables
    
    var eoeSteriods = "No"
    var dietaryTherapies = "No"
    var foodElimination = "No"
    var eliminationBasedOn = "No"
    
    
    var eliminationfromDietTextfield = ""
    var elementaryDietSwitch = "No"
    var exclusiveDiet = "No"
    var supplementalFormula = "No"
    var foodTrails = "No"
    var currentlyEatingText = ""
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodEliminationHeight.constant = 0
        foodEliminationView.hidden = true
        
        eliminationBased.constant = 0
        eliminationBasedView.hidden = true
        
        eliminatingText.constant = 0
        eliminatinationTextView.hidden = true
        
        foodTrailsHeight.constant = 0
        foodTrailsView.hidden = true
        
        supplementalHeight.constant = 0
        supplementalView.hidden = true
        
        elementaryDietHeight.constant = 0
        elementaryDietView.hidden = true
        
        foodTrailsHeight.constant = 0
        foodTrailTextView.hidden = true
        
        
        foodTrailTextHeight.constant = 0.0
        foodTrailTextView.hidden = true
        
        
        hideUnhideActivity(true)

        service.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        animateViewMoving(true, moveValue: 170)
    }
    func textFieldDidEndEditing(textField: UITextField) {
        animateViewMoving(false, moveValue: 170)
    }
    
    func animateViewMoving (up:Bool, moveValue :CGFloat){
        let movementDuration:NSTimeInterval = 0.3
        let movement:CGFloat = ( up ? -moveValue : moveValue)
        UIView.beginAnimations( "animateView", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(movementDuration )
        self.view.frame = CGRectOffset(self.view.frame, 0,  movement)
        UIView.commitAnimations()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takingSteriodsEoE(sender: UISwitch) {
        
        if  sender.on {
         eoeSteriods = "Yes"
        }else{
            eoeSteriods = "No"
 
        }
    }
    
    
    @IBAction func dietaryTherapies(sender: UISwitch) {
        
        if sender.on {
            dietaryTherapies = "Yes"
            foodEliminationHeight.constant = 61.0
            foodEliminationView.hidden = false
            
            elementaryDietHeight.constant = 31.0
            elementaryDietView.hidden = false
        }else{
            
            dietaryTherapies = "No"

            foodEliminationHeight.constant = 0
            foodEliminationView.hidden = true
            
            
            elementaryDietHeight.constant = 0
            elementaryDietView.hidden = true
            
            eliminationBased.constant = 0
            eliminationBasedView.hidden = true
            
            eliminatingText.constant = 0
            eliminatinationTextView.hidden = true
            
            foodTrailsHeight.constant = 0
            foodTrailsView.hidden = true
            
            supplementalHeight.constant = 0
            supplementalView.hidden = true
            
            elementaryDietHeight.constant = 0
            elementaryDietView.hidden = true
            
            foodTrailTextHeight.constant = 0.0
            foodTrailTextView.hidden = true
        }
        
       
    }
    
    
   

    @IBAction func foodElimination(sender: UISwitch) {
        
//        eliminatingText.constant = 101
//        eliminatinationTextView.hidden = false
        
        if sender.on {
            foodElimination  = "Yes"
            eliminationBased.constant = 101
            eliminationBasedView.hidden = false
        }else{
            foodElimination  = "No"

            
            eliminationBased.constant = 0
            eliminationBasedView.hidden = true
            
            eliminatingText.constant = 0
            eliminatinationTextView.hidden = true
        }
        
       
        
    }
    
    @IBAction func eliminationSegment(sender: UISegmentedControl) {
        
                eliminatingText.constant = 101
                eliminatinationTextView.hidden = false
        
        switch sender.selectedSegmentIndex
        {
        case 0:
            eliminationBasedOn = "Allergy";
        case 1:
            eliminationBasedOn = "Six food elimination on a diet";
        default:
            break; 
        }
        
        
    }
    
    @IBAction func ElementaryDiet(sender: UISwitch) {
        
        if sender.on {
            elementaryDietSwitch = "Yes"
            supplementalHeight.constant = 134.0
            supplementalView.hidden = false
        }else{
            elementaryDietSwitch = "No"
            supplementalHeight.constant = 0.0
            supplementalView.hidden = true
            
            
            foodTrailsHeight.constant = 0.0
            foodTrailsView.hidden = true
        }
      
    }
    
    @IBAction func exclusiveDiet(sender: UISwitch) {
        if sender.on {
            exclusiveDiet = "Yes"
           
        }else{
            exclusiveDiet = "No"
           
        }
        
    }
    @IBAction func supplementalFoods(sender: UISwitch) {
        
        if sender.on {
            supplementalFormula  = "Yes"
            foodTrailsHeight.constant = 61.0
            foodTrailsView.hidden = false
        }else{
            supplementalFormula  = "No"
            foodTrailsHeight.constant = 0.0
            foodTrailsView.hidden = true
        }
       
    }
    
    @IBAction func foodTrailSwitch(sender: UISwitch) {
        if sender.on {
            foodTrails = "Yes"
            foodTrailTextHeight.constant = 101.0
            foodTrailTextView.hidden = false
        }else{
            foodTrails = "No"
            foodTrailTextHeight.constant = 0.0
            foodTrailTextView.hidden = true
        }
 
        
    }
    
    
    @IBAction func Done(sender: AnyObject) {
       
        // eliminationtext
        foodCurrentlyEating.resignFirstResponder()
        eliminationText.resignFirstResponder()
        hideUnhideActivity(false)
        service.insertUserTreatment(eoeSteriods, dietary: dietaryTherapies, foodElimination: foodElimination, allergy_syptoms: eliminationBasedOn, allergy_syptoms_food: eliminationText.text!, elementalDiet: elementaryDietSwitch, exclElemental: exclusiveDiet, formula: supplementalFormula, foodTrial: foodTrails, foodTrial_food: foodCurrentlyEating.text!)
        
        
    }
    
    func result(){
        service.insertUserTreatment(eoeSteriods, dietary: dietaryTherapies, foodElimination: foodElimination, allergy_syptoms: eliminationBasedOn, allergy_syptoms_food: eliminationText.text!, elementalDiet: elementaryDietSwitch, exclElemental: exclusiveDiet, formula: supplementalFormula, foodTrial: foodTrails, foodTrial_food: foodCurrentlyEating.text!)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    func successForInsertUT(success: String) {
        hideUnhideActivity(true)

        alertViewFunc("Success")
    }
    
    func FailureForInsertUTError(error: String) {
        
        result()
    }
    
    func FailureForInsertUT(error: String) {
        hideUnhideActivity(true)

        alertViewFunc("Failed")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.foodCurrentlyEating.resignFirstResponder()
        eliminationText.resignFirstResponder()
    }
    
    func alertViewFunc(msg: String)  {
        
       dispatch_async(dispatch_get_main_queue()) { 
                    let alertController = UIAlertController(title: "\(msg)", message: "", preferredStyle: .Alert)
        
                    let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
                    alertController.addAction(defaultAction)
        
                   self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }

}
