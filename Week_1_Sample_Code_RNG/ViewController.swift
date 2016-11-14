//
//  ViewController.swift
//  Week_1_Sample_Code_RNG
//
//  Created by Ankit Solanki on 11/7/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lowerBoundField: UITextField!
    @IBOutlet var uperBoundField: UITextField!
    @IBOutlet var resultText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lowerBoundField.text = "0"
        uperBoundField.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func GenerateRandomNumber(_ sender: Any) {
        // to do : put validation of  - value in text box
        
        let A: UInt32 = UInt32(lowerBoundField?.text ?? "0")!
        let B: UInt32 = UInt32(uperBoundField?.text ?? "0")!
        if(B > A){
            let number = arc4random_uniform(B - A + 1) + A
            resultText.text = "Result : " + String(number)
        }
        else {
            resultText.text = "Invalid Start & End"
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

