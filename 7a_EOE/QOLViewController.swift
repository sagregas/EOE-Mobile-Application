//
//  QOLViewController.swift
//  7a_EOE
//


import UIKit

class QOLViewController: UIViewController,PortalServiceDelegate {
    
    var service = PortalService()
    var  qol1 = -1
    var  qol2 = -1
    var  qol3 = -1
    var  qol4 = -1
    var  qol5 = -1
    var  qol6 = -1
    var  qol7 = -1
    var  qol8 = -1
    var  qol9 = -1
    var  qol10 = -1
    var  qol11 = -1
    var  qol12 = -1
    var  qol13 = -1
    var  qol14 = -1
    var  qol15 = -1
    var  qol16 = -1
    var  qol17 = -1
    var  qol18 = -1
    var  qol19 = -1
    var  qol20 = -1
    var  qol21 = -1
    var  qol22 = -1
    var  qol23 = -1
    var  qol24 = -1
    var  qol25 = -1
    var  qol26 = -1
    var  qol27 = -1
    var  qol28 = -1
    var  qol29 = -1
    var  qol30 = -1
    var  qol31 = -1
    var  qol32 = -1
    var  qol33 = -1
    var  qol34 = -1
    var  qol35 = -1
    var  qol36 = -1
    
    var switch2 = -1
    var switch1 = -1
    
    @IBOutlet weak var feedingTubeView: UIView!
    @IBOutlet weak var feedingTubeHeight: NSLayoutConstraint!
    @IBOutlet weak var foodAlergic: UIView!
    @IBOutlet weak var heightFoodAlergic: NSLayoutConstraint!
    
    @IBOutlet weak var segment1Field: UILabel!
@IBOutlet weak var segment1: UISegmentedControl!
    
@IBAction func segment1Action(sender: AnyObject) {
    
segment1Field.text = returnLblStatus(segment1.selectedSegmentIndex)
    qol1 = segment1.selectedSegmentIndex
    
}


@IBOutlet weak var segment2: UISegmentedControl!
@IBOutlet weak var segment2field: UILabel!
    
@IBAction func segment2Action(sender: AnyObject) {
segment2field.text = returnLblStatus(segment2.selectedSegmentIndex)
    qol2 = segment2.selectedSegmentIndex

}



@IBOutlet weak var segment3Field: UILabel!
@IBOutlet weak var segment3: UISegmentedControl!
@IBAction func segment3Action(sender: AnyObject) {
segment3Field.text = returnLblStatus(segment3.selectedSegmentIndex)
    qol3 = segment3.selectedSegmentIndex

}


@IBOutlet weak var segment4Field: UILabel!
@IBOutlet weak var segment4: UISegmentedControl!
@IBAction func segment4Action(sender: AnyObject) {
segment4Field.text = returnLblStatus(segment4.selectedSegmentIndex)
    qol4 = segment4.selectedSegmentIndex

    
}

@IBOutlet weak var segment5Field: UILabel!
@IBOutlet weak var segment5: UISegmentedControl!
@IBAction func segment5Action(sender: AnyObject) {
segment5Field.text = returnLblStatus(segment5.selectedSegmentIndex)
    qol5 = segment5.selectedSegmentIndex

}


@IBOutlet weak var segment6Field: UILabel!
@IBOutlet weak var segment6: UISegmentedControl!
@IBAction func segment6Action(sender: AnyObject) {
segment6Field.text = returnLblStatus(segment6.selectedSegmentIndex)
    qol6 = segment6.selectedSegmentIndex

}


@IBOutlet weak var segment7Field: UILabel!
@IBOutlet weak var segment7: UISegmentedControl!
@IBAction func segment7Action(sender: AnyObject) {
segment7Field.text = returnLblStatus(segment7.selectedSegmentIndex)
    qol7 = segment7.selectedSegmentIndex

}

@IBOutlet weak var segment8Field: UILabel!
@IBOutlet weak var segment8: UISegmentedControl!
@IBAction func segment8Action(sender: AnyObject) {
segment8Field.text = returnLblStatus(segment8.selectedSegmentIndex)
    qol8 = segment8.selectedSegmentIndex

}




@IBOutlet weak var segment10Field: UILabel!
@IBOutlet weak var segment10: UISegmentedControl!
@IBAction func segment10Action(sender: AnyObject) {
segment10Field.text = returnLblStatus(segment10.selectedSegmentIndex)
    qol10 = segment10.selectedSegmentIndex

}


@IBOutlet weak var segment11Field: UILabel!
@IBOutlet weak var segment11: UISegmentedControl!
@IBAction func segment11Action(sender: AnyObject) {
segment11Field.text = returnLblStatus(segment11.selectedSegmentIndex)
    qol11 = segment11.selectedSegmentIndex

}

@IBOutlet weak var segment12Field: UILabel!
@IBOutlet weak var segment12: UISegmentedControl!
@IBAction func segment12Action(sender: AnyObject) {
segment12Field.text = returnLblStatus(segment12.selectedSegmentIndex)
    qol12 = segment12.selectedSegmentIndex

}


@IBOutlet weak var segment13Field: UILabel!
@IBOutlet weak var segment13: UISegmentedControl!
@IBAction func segment13Action(sender: AnyObject) {
segment13Field.text = returnLblStatus(segment13.selectedSegmentIndex)
    qol13 = segment13.selectedSegmentIndex

}


@IBOutlet weak var segment14Field: UILabel!
@IBOutlet weak var segment14: UISegmentedControl!
@IBAction func segment14Action(sender: AnyObject) {
segment14Field.text = returnLblStatus(segment14.selectedSegmentIndex)
    qol14 = segment14.selectedSegmentIndex

}


@IBOutlet weak var segment15Field: UILabel!
@IBOutlet weak var segment15: UISegmentedControl!
@IBAction func segment15Action(sender: AnyObject) {
segment15Field.text = returnLblStatus(segment15.selectedSegmentIndex)
    qol15 = segment15.selectedSegmentIndex
 
}


@IBOutlet weak var segment16Field: UILabel!
@IBOutlet weak var segment16: UISegmentedControl!
@IBAction func segment16Action(sender: AnyObject) {
segment16Field.text = returnLblStatus(segment16.selectedSegmentIndex)
    qol16 = segment16.selectedSegmentIndex

}


@IBOutlet weak var segment17Field: UILabel!
@IBOutlet weak var segment17: UISegmentedControl!
@IBAction func segment17Action(sender: AnyObject) {
segment17Field.text = returnLblStatus(segment17.selectedSegmentIndex)
    qol17 = segment17.selectedSegmentIndex

}

@IBOutlet weak var segment18Field: UILabel!
@IBOutlet weak var segment18: UISegmentedControl!
@IBAction func segment18Action(sender: AnyObject) {
segment18Field.text = returnLblStatus(segment18.selectedSegmentIndex)
    qol18 = segment18.selectedSegmentIndex

}


@IBOutlet weak var segment19Field: UILabel!
@IBOutlet weak var segment19: UISegmentedControl!
@IBAction func segment19Action(sender: AnyObject) {
segment19Field.text = returnLblStatus(segment19.selectedSegmentIndex)
    qol19 = segment19.selectedSegmentIndex

}


@IBOutlet weak var segment20Field: UILabel!
@IBOutlet weak var segment20: UISegmentedControl!
@IBAction func segment20Action(sender: AnyObject) {
segment20Field.text = returnLblStatus(segment20.selectedSegmentIndex)
    qol20 = segment20.selectedSegmentIndex

}



@IBOutlet weak var segment21Field: UILabel!
@IBOutlet weak var segment21: UISegmentedControl!
@IBAction func segment21Action(sender: AnyObject) {
segment21Field.text = returnLblStatus(segment21.selectedSegmentIndex)
    qol21 = segment21.selectedSegmentIndex

}



@IBOutlet weak var segment22Field: UILabel!
@IBOutlet weak var segment22: UISegmentedControl!
@IBAction func segment22Action(sender: AnyObject) {
segment22Field.text = returnLblStatus(segment22.selectedSegmentIndex)
    qol22 = segment22.selectedSegmentIndex

}


@IBOutlet weak var segment23Field: UILabel!
@IBOutlet weak var segment23: UISegmentedControl!
@IBAction func segment23Action(sender: AnyObject) {
segment23Field.text = returnLblStatus(segment23.selectedSegmentIndex)
    qol23 = segment23.selectedSegmentIndex

}

@IBOutlet weak var segment24Field: UILabel!

@IBOutlet weak var segment24: UISegmentedControl!

@IBAction func segment24Action(sender: AnyObject) {
segment24Field.text = returnLblStatus(segment24.selectedSegmentIndex)
    qol24 = segment24.selectedSegmentIndex

}


@IBOutlet weak var segment25Field: UILabel!
@IBOutlet weak var segment25: UISegmentedControl!
@IBAction func segment25Action(sender: AnyObject) {
segment25Field.text = returnLblStatus(segment25.selectedSegmentIndex)
    qol25 = segment25.selectedSegmentIndex

}


@IBOutlet weak var segment26Field: UILabel!
@IBOutlet weak var segment26: UISegmentedControl!
@IBAction func segment26Action(sender: AnyObject) {
segment26Field.text = returnLblStatus(segment26.selectedSegmentIndex)
    qol26 = segment26.selectedSegmentIndex

}

@IBOutlet weak var segment27Field: UILabel!
@IBOutlet weak var segment27: UISegmentedControl!

@IBAction func segment27Action(sender: AnyObject) {
segment27Field.text = returnLblStatus(segment27.selectedSegmentIndex)
    qol27 = segment27.selectedSegmentIndex

}


@IBOutlet weak var segment28Field: UILabel!
@IBOutlet weak var segment28: UISegmentedControl!

@IBAction func segment28Action(sender: AnyObject) {
segment28Field.text = returnLblStatus(segment28.selectedSegmentIndex)
    qol28 = segment28.selectedSegmentIndex

}

@IBOutlet weak var segment29Field: UILabel!
@IBOutlet weak var segment29: UISegmentedControl!
    
@IBAction func segment29Action(sender: AnyObject) {
segment29Field.text = returnLblStatus(segment29.selectedSegmentIndex)
    qol29 = segment29.selectedSegmentIndex

    
}


@IBOutlet weak var segment30Field: UILabel!
@IBOutlet weak var segment30: UISegmentedControl!
@IBAction func segment30Action(sender: AnyObject) {
segment30Field.text = returnLblStatus(segment30.selectedSegmentIndex)
    qol30 = segment30.selectedSegmentIndex

}


@IBOutlet weak var segment31Field: UILabel!
@IBOutlet weak var segment31: UISegmentedControl!
@IBAction func segment31Action(sender: AnyObject) {
segment31Field.text = returnLblStatus(segment31.selectedSegmentIndex)
    qol31 = segment31.selectedSegmentIndex

    
}


@IBOutlet weak var segment32Field: UILabel!

@IBOutlet weak var segment32: UISegmentedControl!

@IBAction func segment32Action(sender: AnyObject) {
segment32Field.text = returnLblStatus(segment32.selectedSegmentIndex)
    qol32 = segment32.selectedSegmentIndex

}

@IBOutlet weak var segment34Field: UILabel!
@IBOutlet weak var segment34: UISegmentedControl!

@IBAction func segment34Action(sender: AnyObject) {
segment34Field.text = returnLblStatus(segment34.selectedSegmentIndex)
    qol34 = segment34.selectedSegmentIndex

    
}




@IBOutlet weak var segment33Field: UILabel!
@IBOutlet weak var segment33: UISegmentedControl!
@IBAction func segment33Action(sender: AnyObject) {
segment33Field.text = returnLblStatus(segment33.selectedSegmentIndex)
    qol33 = segment33.selectedSegmentIndex

    
}


@IBOutlet weak var segment35Field: UILabel!

@IBOutlet weak var segment35: UISegmentedControl!

@IBAction func segment35Action(sender: AnyObject) {
segment35Field.text = returnLblStatus(segment35.selectedSegmentIndex)
    qol35 = segment35.selectedSegmentIndex

}

@IBOutlet weak var segment36Field: UILabel!
@IBOutlet weak var segment36: UISegmentedControl!

@IBAction func segment36Action(sender: AnyObject) {
segment36Field.text = returnLblStatus(segment36.selectedSegmentIndex)
    qol36 = segment36.selectedSegmentIndex

}
    
    func returnLblStatus(index: Int) -> String{

switch index {
    case 0:
        return "Never"
    case 1:
        return "Almost Never"
    case 2:
        return "Sometimes"
    case 3:
        return "Often"
    case 4:
        return "Almost Always"
    default:
    break
}
        return ""
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightFoodAlergic.constant = 0
        foodAlergic.hidden = true
        feedingTubeHeight.constant = 0
        feedingTubeView.hidden = true
//        self.tabBarController?.navigationItem.hidesBackButton = true
// self.tabBarController?.navigationItem.setHidesBackButton(true, animated: false)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func foodAlergic(sender: UISwitch) {
        
        if sender.on{
            
           heightFoodAlergic.constant = 1086
            foodAlergic.hidden = false

        }else{
            heightFoodAlergic.constant = 0
            foodAlergic.hidden = true
        }
        
        switch1 = 1
        
    }

    @IBAction func feedingTube(sender: UISwitch) {
        if sender.on{
            
            feedingTubeHeight.constant = 353
            feedingTubeView.hidden = false
            
        }else{
            feedingTubeHeight.constant = 0
            feedingTubeView.hidden = true
        }
        
        switch2 = 1
        
    }
    
    
    @IBAction func submit(sender: AnyObject) {
        
        service.delegate = self
        service.insertQOL("\(qol1)", s1q2: "\(qol2)", s1q3: "\(qol3)", s1q4: "\(qol4)", s1q5: "\(qol5)", s1q6: "\(qol6)", s2q1: "\(qol7)", s2q2: "\(qol8)", s2q3: "\(qol10)", s2q4: "\(qol11)", s3q1: "\(qol12)", s3q2: "\(qol13)", s3q3: "\(qol14)", s3q4: "\(qol15)", s3q5: "\(qol16)", s4q1: "\(qol17)", s4q2: "\(qol18)", s4q3: "\(qol19)", s4q4: "\(qol20)", s4q5: "\(qol21)", s4q6: "\(qol22)", s5q1: "\(qol23)", s5q2: "\(qol24)", s5q3: "\(qol25)", s5q4: "\(qol26)", s5q5: "\(qol27)", s6q1: "\(qol28)", s6q2: "\(qol29)", s6q3: "\(qol30)", s6q4: "\(qol31)", s7q1: "\(qol32)", s7q2: "\(qol34)", s7q3: "\(qol33)", s8: "\(switch2)", s8q1: "\(qol35)", s8q2: "\(qol36)",switch1: "\(switch1)")
    }
    
    func successForInsertQOL(success: String) {
        alertViewFunc("successfully saved QOL data")
    }
    
    
    func FailureForInsertQOL(error: String) {
        alertViewFunc("failed to save QOL data")

    }
    
    
    func alertViewFunc(msg: String)  {
        
        
        let alertController = UIAlertController(title: "\(msg)", message: "", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
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
