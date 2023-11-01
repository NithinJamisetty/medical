//
//  ViewController.swift
//  drug_blend
//
//  Created by Student on 05/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        @IBAction func loginbn(_ sender: Any) {
        if name.text == "vinay" && pass.text == "9133"{
            performSegue(withIdentifier: "main", sender: nil)
        }else if name.text == "haritha" &&
            pass.text == "4670"{
                performSegue(withIdentifier: "main", sender: nil)
            }
            else{
                let alert = UIAlertController(title: "Warning", message: "Invalid username or password. Please try again.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var name = name.text!
        if segue.identifier == "main"{
            var dest  = segue.destination as! mainpage
            dest.name = name
        }
    }
    
}

