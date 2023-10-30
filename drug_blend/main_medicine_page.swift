//
//  main_medicine_page.swift
//  drug_blend
//
//  Created by Nithin on 27/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class main_medicine_page: UIViewController {

    @IBOutlet weak var medicinedescription_label: UILabel!
    @IBOutlet weak var medicineimage: UIImageView!
    @IBOutlet weak var medicinename_label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        medicinename_label.text = medicineNames[myIndex]
        medicineimage.image = UIImage(named: medicineimages[myIndex])
        medicinedescription_label.text = medicineDesc[myIndex]
        
    }

}

