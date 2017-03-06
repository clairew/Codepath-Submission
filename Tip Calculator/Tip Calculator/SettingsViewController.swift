//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Claire Wang on 3/5/17.
//  Copyright © 2017 Claire Wang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.greenColor()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setTip(sender: AnyObject) {
        let tipValues = [0.15, 0.18, 0.2]
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipValues[defaultTip.selectedSegmentIndex], forKey:"defaultTip")
        defaults.synchronize()
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
