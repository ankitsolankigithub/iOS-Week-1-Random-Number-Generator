//
//  ThemingViewController.swift
//  Week_1_Sample_Code_RNG
//
//  Created by Ankit Solanki on 11/14/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import UIKit

class ThemingViewController: UIViewController {

    @IBOutlet var labelStep: UILabel!
    @IBOutlet var lblTheme: UILabel!
    @IBOutlet var homeViewController: UIView!
    @IBOutlet var switchTheme: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func themeChange(_ sender: UISwitch) {
        if(sender.isOn)
        {
            lblTheme.text = "Dark Theme"
            self.view.backgroundColor = UIColor.darkGray
        }
        else
        {
            lblTheme.text = "Light Theme"
            self.view.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        labelStep.text = Int(sender.value).description
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
