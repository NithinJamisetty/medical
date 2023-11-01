//
//  appointment.swift
//  drug_blend
//
//  Created by Nithin on 1/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
var gender1 = ""
var name1 = ""
var age1 = ""
var bloodgroup1 = ""
class appointment: UIViewController {

    @IBAction func confirmdetails(_ sender: Any) {
        let alertView = UIAlertController(title: "Confirm!!", message: "Hey! \(name1) Hope You are having good day. Entered Details are sharing to Hospital", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertView,animated: true, completion: nil)
    }
    @IBOutlet weak var userbg: UILabel!
    @IBOutlet weak var usergender: UILabel!
    @IBOutlet weak var userage1: UILabel!
    @IBOutlet weak var user: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        userbg.text = bloodgroup1
        usergender.text = gender1
        userage1.text = age1
        user.text = name1
    }
    

    

}
