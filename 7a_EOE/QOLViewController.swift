//
//  QOLViewController.swift
//  7a_EOE
//


import UIKit
extension UIScrollView {
    func scrollToTop() {
        let desiredOffset = CGPoint(x: 0, y: -contentInset.top)
        setContentOffset(desiredOffset, animated: true)
    }
}
class QOLViewController: UIViewController,PortalServiceDelegate {
    
    @IBOutlet weak var viewForActivityIndicator: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
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
    
    var sym1count = 0
    var sym1score = 0.0
    var sym2count = 0
    var sym2score = 0.0
    var treatcount = 0
    var treatscore = 0.0
    var worrycount = 0
    var worryscore = 0.0
    var commcount = 0
    var commscore = 0.0
    var fecount = 0
    var fescore = 0.0
    var ffcount = 0
    var ffscore = 0.0
    var totcount = 0
    var totscore = 0.0
    var symcount = 0
    var symscore = 0.0
    
    var switch2 = -1
    var switch1 = -1
    
    @IBOutlet weak var feedingTubeView: UIView!
    @IBOutlet weak var feedingTubeHeight: NSLayoutConstraint!
    @IBOutlet weak var foodAlergic: UIView!
    @IBOutlet weak var heightFoodAlergic: NSLayoutConstraint!
    
    @IBOutlet weak var segment1Field: UILabel!
    @IBOutlet weak var segment1: UISegmentedControl!
    
    @IBOutlet weak var hideLbl: UILabel!
    @IBOutlet weak var hideView: UIView!
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
    
    
    
    override func viewWillAppear(animated: Bool) {
       InitailhideViews()
        hideUnhideActivity(true)
    }
    
    func hideViews(){
        print("qoldate:\(NSUserDefaults.standardUserDefaults().valueForKey("QOLDate"))")
        if NSUserDefaults.standardUserDefaults().valueForKey("QOLDate") != nil
        {
            let differenceForSeven = 30
            let dateStored = "\(NSUserDefaults.standardUserDefaults().valueForKey("QOLDate")!)"
            let formatter = NSDateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
            let dateStr = formatter.dateFromString(dateStored)
            
            let differenceBtwTwo = differenceInDaysWithDate(dateStr!)
            
            let diff = differenceForSeven - differenceBtwTwo
            
            if diff == 0{
                self.hideView.hidden = true
                scrollView.scrollEnabled = true
                // close new view
            }else{
                
                dispatch_async(dispatch_get_main_queue(), {
                    self.hideView.hidden = false
                    self.hideLbl.text = "The survey has been completed.Fill the form after \(diff) days"
                    self.scrollView.scrollToTop()
                    self.scrollView.scrollEnabled = false
                    self.viewDidLoad()
                    self.viewWillAppear(true)

                    })
               
                            print("remaining days:\(diff)")
                //print remaining days
            }
            //
            
        }
    }
    
    
    func InitailhideViews(){
        print("qoldate:\(NSUserDefaults.standardUserDefaults().valueForKey("QOLDate"))")
        if NSUserDefaults.standardUserDefaults().valueForKey("QOLDate") != nil
        {
            let differenceForSeven = 30
            let dateStored = "\(NSUserDefaults.standardUserDefaults().valueForKey("QOLDate")!)"
            let formatter = NSDateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
            let dateStr = formatter.dateFromString(dateStored)
            
            let differenceBtwTwo = differenceInDaysWithDate(dateStr!)
            
            let diff = differenceForSeven - differenceBtwTwo
            
            if diff == 0{
                self.hideView.hidden = true
                scrollView.scrollEnabled = true
                // close new view
            }else{
                
                dispatch_async(dispatch_get_main_queue(), {
                    self.hideView.hidden = false
                    self.hideLbl.text = "The survey has been completed.Fill the form after \(diff) days"
                    self.scrollView.scrollToTop()
                    self.scrollView.scrollEnabled = false
                  
                    
                })
                
                print("remaining days:\(diff)")
                //print remaining days
            }
            //
            
        }
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
            switch1 = 1

            heightFoodAlergic.constant = 1086
            foodAlergic.hidden = false
            
        }else{
            switch1 = -1
            qol28 = -1
            qol29 = -1
            qol30 = -1
            qol31 = -1
            qol32 = -1
            qol33 = -1
            qol34 = -1
            heightFoodAlergic.constant = 0
            foodAlergic.hidden = true
        }
        
        
    }
    
    @IBAction func feedingTube(sender: UISwitch) {
        if sender.on{
            switch2 = 1

            feedingTubeHeight.constant = 353
            feedingTubeView.hidden = false
            
        }else{
            switch2 = -1

            feedingTubeHeight.constant = 0
            feedingTubeView.hidden = true
        }
        
        
    }
    
    
    @IBAction func submit(sender: AnyObject) {
     //  hideViews()
       result()
    }
    
    func result()
    {
        sym1count = counter(qol1) + counter(qol2) + counter(qol3) + counter(qol4) + counter(qol5) + counter(qol6)
        sym1score = scoreCalc(qol1) + scoreCalc(qol2) + scoreCalc(qol3) + scoreCalc(qol4) + scoreCalc(qol5) + scoreCalc(qol6)
        
        sym2count = counter(qol7) + counter(qol8) + counter(qol10) + counter(qol11)
        sym2score = scoreCalc(qol7) + scoreCalc(qol8) + scoreCalc(qol10) + scoreCalc(qol11)
        
        treatcount = counter(qol12) + counter(qol13) + counter(qol14) + counter(qol15) + counter(qol16)
        treatscore = scoreCalc(qol12) + scoreCalc(qol13) + scoreCalc(qol14) + scoreCalc(qol15) + scoreCalc(qol16)
        
        worrycount = counter(qol17) + counter(qol18) + counter(qol19) + counter(qol20) + counter(qol21) + counter(qol22)
        worryscore = scoreCalc(qol17) + scoreCalc(qol18) + scoreCalc(qol19) + scoreCalc(qol20) + scoreCalc(qol21) + scoreCalc(qol22)
        
        commcount = counter(qol23) + counter(qol24) + counter(qol25) + counter(qol26) + counter(qol27)
        commscore = scoreCalc(qol23) + scoreCalc(qol24) + scoreCalc(qol25) + scoreCalc(qol26) + scoreCalc(qol27)
        
        fecount = counter(qol28) + counter(qol29) + counter(qol30) + counter(qol31)
        fescore = scoreCalc(qol28) + scoreCalc(qol29) + scoreCalc(qol30) + scoreCalc(qol31)
        
        ffcount = counter(qol32) + counter(qol33) + counter(qol34)
        ffscore = scoreCalc(qol32) + scoreCalc(qol33) + scoreCalc(qol34)
        
        totcount = sym1count + sym2count + treatcount + worrycount + commcount + fecount + ffcount
        totscore = sym1score + sym2score + treatscore + worryscore + commscore + fescore + ffscore
        
        symcount = sym1count + sym2count
        symscore = sym1score + sym2score
        
        
        if sym1count > 3 {
            
            sym1score = 0.0
        }
        else{
            
            sym1score = sym1score / (6 - Double(sym1count))
            
        }
        
        if sym2count > 2 {
            
            sym2score = 0.0
        }
        else{
            
            sym2score = sym2score / (4 - Double(sym2count))
            
        }
        
        if treatcount > 2 {
            
            treatscore = 0.0
        }
        else{
            
            treatscore = treatscore / (5 - Double(treatcount))
            
        }
        
        if worrycount > 3 {
            
            worryscore = 0.0
        }
        else{
            
            worryscore = worryscore / (6 - Double(worrycount))
            
        }
        if commcount > 2 {
            
            commscore = 0.0
        }
        else{
            
            commscore = commscore / (5 - Double(commcount))
            
        }
        
        if fecount > 2 {
            
            fescore = 0.0
        }
        else{
            
            fescore = fescore / (4 - Double(fecount))
            
        }
        
        if ffcount > 1 {
            
            ffscore = 0.0
        }
        else{
            
            ffscore = ffscore / (3 - Double(ffcount))
            
        }
        
        if totcount > 16 {
            
            totscore = 0.0
        }
        else{
            totscore = totscore / (33 - Double(totcount))
        }
        
        if symcount > 5 {
            
            symscore = 0.0
        }
        else{
            symscore = symscore / (10 - Double(symcount))
        }
        
        
        
        
        
        service.delegate = self
        service.insertQOL("\(qol1)", s1q2: "\(qol2)", s1q3: "\(qol3)", s1q4: "\(qol4)", s1q5: "\(qol5)", s1q6: "\(qol6)", s2q1: "\(qol7)", s2q2: "\(qol8)", s2q3: "\(qol10)", s2q4: "\(qol11)", s3q1: "\(qol12)", s3q2: "\(qol13)", s3q3: "\(qol14)", s3q4: "\(qol15)", s3q5: "\(qol16)", s4q1: "\(qol17)", s4q2: "\(qol18)", s4q3: "\(qol19)", s4q4: "\(qol20)", s4q5: "\(qol21)", s4q6: "\(qol22)", s5q1: "\(qol23)", s5q2: "\(qol24)", s5q3: "\(qol25)", s5q4: "\(qol26)", s5q5: "\(qol27)", s6q1: "\(qol28)", s6q2: "\(qol29)", s6q3: "\(qol30)", s6q4: "\(qol31)", s7q1: "\(qol32)", s7q2: "\(qol34)", s7q3: "\(qol33)", s8: "\(switch2)", s8q1: "\(qol35)", s8q2: "\(qol36)",switch1: "\(switch1)", sym1score: "\(sym1score)", sym2score: "\(sym2score)", treatscore: "\(treatscore)", worryscore: "\(worryscore)", commscore: "\(commscore)", fescore: "\(fescore)", ffscore: "\(ffscore)", totscore: "\(totscore)", symscore: "\(symscore)")
        
        hideUnhideActivity(false)
    }
    
    func differenceInDaysWithDate(date: NSDate) -> Int
    {
        let calendar: NSCalendar = NSCalendar.currentCalendar()
        
        
        let date1 = calendar.startOfDayForDate(NSDate())
        let date2 = calendar.startOfDayForDate(date)
        
        let components = calendar.components(.Day, fromDate: date2, toDate: date1, options: [])
        let days = components.day
        return days
        
    }
    
    func scoreCalc(value: Int) -> Double {
        
        switch(value){
        case 0 : return 100
        case 1 : return 75
        case 2 : return 50
        case 3 : return 25
        case 4 : return 0
        default : return 0
        }
        
    }
    
    func counter(value: Int) -> Int {
        
        if(value == -1){
            return 1
        }
        
        return 0
        
    }
    
    
    func successForInsertQOL(success: String) {
        let currentDate = NSDate()
        NSUserDefaults.standardUserDefaults().setValue(currentDate, forKey: "QOLDate")
        hideUnhideActivity(true)
        hideViews()
        //alertViewFunc("successfully saved QOL data")
    }
    
    
    func FailureForInsertQOL(error: String) {
        hideUnhideActivity(true)
        alertViewFunc("failed to save QOL data")
        
    }
    
    func FailureForInsertQOLError(error: String) {
        result()
    }
    
    func alertViewFunc(msg: String)  {
        
        dispatch_async(dispatch_get_main_queue()) {
            let alertController = UIAlertController(title: "\(msg)", message: "", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
