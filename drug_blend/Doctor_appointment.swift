//
//  Doctor_appointment.swift
//  drug_blend
//
//  Created by Nithin on 1/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class Doctor_appointment: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var bloodgroup: UITextField!
    @IBOutlet weak var gender: UISwitch!
    
    @IBAction func booking(_ sender: Any) {
        performSegue(withIdentifier: "appointment", sender: nil)
        if gender.isOn{
            gender1 = "female"
        }
        else
        {
            gender1 = "male"
        }
        
        name1 = username.text!;
        age1 = age.text ?? "";
        bloodgroup1 = bloodgroup.text!;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
}
