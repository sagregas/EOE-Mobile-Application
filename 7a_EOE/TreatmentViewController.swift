//
//  TreatmentViewController.swift
//  7a_EOE
//
//  Created by Rohith Raju on 11/20/16.
//  Copyright © 2016 Rohith Raju. All rights reserved.
//

import UIKit

class TreatmentViewController: UIViewController {

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
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takingSteriodsEoE(sender: AnyObject) {
    }
    
    
    @IBAction func dietaryTherapies(sender: AnyObject) {
        
        foodEliminationHeight.constant = 61.0
        foodEliminationView.hidden = false
        
        elementaryDietHeight.constant = 31.0
        elementaryDietView.hidden = false
    }

    @IBAction func foodElimination(sender: AnyObject) {
        
//        eliminatingText.constant = 101
//        eliminatinationTextView.hidden = false
        
        eliminationBased.constant = 101
        eliminationBasedView.hidden = false
        
    }
    
    @IBAction func eliminationSegment(sender: AnyObject) {
        
                eliminatingText.constant = 101
                eliminatinationTextView.hidden = false
        
    }
    
    @IBAction func ElementaryDiet(sender: AnyObject) {
        supplementalHeight.constant = 134.0
        supplementalView.hidden = false
    }
    
    @IBAction func supplementalFoods(sender: AnyObject) {
        
        
        foodTrailsHeight.constant = 61.0
        foodTrailsView.hidden = false
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
