//
//  Insurance.swift
//  drug_blend
//
//  Created by Nithin on 1/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class Insurance: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var insuranceseg: UISegmentedControl!
    
    @IBOutlet weak var agenumber: UITextField!
    
    @IBAction func displayfunc(_ sender: Any) {
        var dispmsg = "";
        if(insuranceseg.selectedSegmentIndex == 0 && Int(agenumber.text!)! > 20){
            dispmsg = "YOU ARE ELIGIBLE FOR  A EMPLOYEE INSURANCE";
        }else if(insuranceseg.selectedSegmentIndex == 1 && Int(agenumber.text!)! > 20){
            dispmsg = "NO PROBLEM WE WILL COVER YOU UNDER A HEALTH BHEEMA PLAN";
        }else{
            dispmsg = "YOUR ARE NOT ELIGIBLE FOR OUR INSURANCE PLAN";
        }
        
        let alert = UIAlertController(title: "Congratulations!!", message: "\(dispmsg)", preferredStyle: .alert)
       alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true, completion: nil)
    }
    
}
