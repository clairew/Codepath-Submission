//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Claire Wang on 3/5/17.
//  Copyright © 2017 Claire Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var controlTip: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    /*@IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0 
        let tip = bill * tipPercentages[controlTip.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format:"$%f.2", tip)
        totalLabel.text = String(format:"$%f.2",total)
    }*/
    
    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[controlTip.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultValue = defaults.doubleForKey("defaultTip")
        print(defaultValue)
        let bill = Double(billField.text!) ?? 0
        let tip = bill * defaultValue
        let total = bill + tip
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    


}

