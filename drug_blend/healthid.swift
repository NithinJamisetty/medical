//
//  healthid.swift
//  drug_blend
//
//  Created by Nithin on 1/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class healthid: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var stname = ""

    @IBOutlet weak var healthidname: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        if let name = healthidname.text {
            stname = name
            let alert = UIAlertController(title: "Successfully Created your health card.", message: "Hello \(stname), Your Health card is created successfully and will be delivered to your address in 15 working days. Thank You!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
