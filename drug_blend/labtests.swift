//
//  labtests.swift
//  drug_blend
//
//  Created by Nithin on 1/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class labtests: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var testtype: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var url1 = URL(string: "https://youtu.be/NxutOVA7DbI?si=6v1FRerJ40Bj6Op2")
    var url2 = URL(string: "https://youtu.be/wW8cNMl_jVQ?si=3fJIGbRyzcqeYgFs")
    var url3 = URL(string: "https://youtu.be/N30P9qrRkNY?si=XlPeGj-4Cf-n-Adr")
    @IBAction func test(_ sender: Any) {
        if testtype.selectedSegmentIndex == 0{
            webview.loadRequest(URLRequest(url: url1!))
        }
        else if testtype.selectedSegmentIndex == 1{
            webview.loadRequest(URLRequest(url: url2!))
        }
        else{
            webview.loadRequest(URLRequest(url: url3!))
        }
        
    }
    

}
