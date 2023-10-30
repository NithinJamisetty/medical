//
//  medicines.swift
//  drug_blend
//
//  Created by Nithin on 27/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
var medicineimages = ["tbc1","tbc2","tbc3","tbc4","tbc5","tbc6","tbc7","tbc8","tbc9","tbc10","tbc11","tbc12","tbc13","tbc14","tbc15","tbc16","tbc17","tbc18","tbc19","tbc20"]
var medicineNames = ["AMPHOTERICIN-B","Ampicillin","L-Asparaginase","CALCIUM-Tablets","Azithromycin-500mg","Eldoper","Captopril","Penicillin-VK","dart","PREZISTA","ORSL-Apple Drink","FIRST AID KIT","KINESIOLOGYTAPE","HIFENAC-P","GAMMAKED","LEG CRAMPS","Ibuprofen","Dolo-650","Hansaplast-Bandages","Ritonavir"]
var medicineDesc = ["AMPHOTERICIN-B - Description: Amphotericin B is an anti-fungal medication.       - Mainly Used For:- Treating severe fungal infections.- Fungal infections that don't respond to other anti-fungals.","Ampicillin - Ampicillin is an antibiotic.- Mainly Used For:- Treating a wide range of bacterial infections.- Commonly used for respiratory, urinary tract, and skin infections.", "L-Asparaginase- L-Asparaginase is an enzyme. - Mainly Used For: - Treating acute lymphoblastic leukemia (ALL).- Depleting asparagine to inhibit cancer cell growth.", "CALCIUM-Tablets- Calcium tablets provide supplemental calcium.- Mainly Used For: - Supporting bone health and preventing osteoporosis. - Ensuring strong teeth and overall health.","Azithromycin-500mg - Azithromycin is an antibiotic.- Mainly Used For:- Treating bacterial infections such as respiratory, skin, and ear infections.- Often prescribed as a Z-Pak.","Eldoper -  Eldoper is an antidiarrheal medication.- Mainly Used For:- Relieving diarrhea and associated symptoms.- Reducing the frequency and urgency of bowel movements.","Captopril- Description: Captopril is an ACE inhibitor.- Mainly Used For: - Lowering blood pressure and managing heart conditions.- Prescribed for hypertension and heart failure.","Penicillin-VK- Penicillin-VK is an antibiotic.- Mainly Used For: - Treating a range of common bacterial infections. - Used for strep throat, skin infections, and more.","Dart - Dart is fewer control Medicine- Mainly Used for: - Treating for fewer", "PREZISTA- Description: PREZISTA (Darunavir) is an antiretroviral medication. - Mainly Used For: - Treating HIV/AIDS as part of combination therapy. - Reducing the viral load and managing the infection.","ORSL-Apple Drink   - Description: ORSL-Apple Drink is an oral rehydration solution. - Mainly Used For:- Rehydrating during illnesses causing diarrhea or vomiting.- Particularly beneficial for child.","FIRST AID KIT -  A first aid kit contains medical supplies for basic first aid.- Mainly Used For:- Providing initial medical care in emergencies. - Treating injuries and minor illnesses.","KINESIOLOGY TAPE -  Kinesiology tape is used for physical and sports-related applications.- Mainly Used For:- Supporting injured muscles and joints.- Aiding in pain relief and sports performance.", "HIFENAC-P-  HIFENAC-P is a combination medication.- Mainly Used For: - Reducing pain and inflammation in conditions like arthritis. - Alleviating pain and swelling.","Gammaked -  GAMMAKED is an intravenous immunoglobulin (IGIV) used as a replacement therapy for the treatment of primary humoral immunodeficiency diseases in which patients lack sufficient functioning antibodies to fight infections. GAMMAKED therapy is also used in the treatment of certain autoimmune and inflammatory disorders.","LEG CRAMPS - Leg cramps may be managed with supplements like magnesium, calcium, potassium, or vitamin D. Stretching, hydration, and addressing triggers are non-pharmacological approaches to prevent leg cramps.","buprofen- Description: Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID).- Mainly Used For: - Effective for pain relief, fever reduction, and anti-inflammatory purposes.- Used for headaches, muscle pain, and menstrual cramps.","Dolo-650-: Dolo-650 is a brand of paracetamol (acetaminophen)- Mainly Used For: - Providing relief from mild to moderate pain and fever.- Commonly used for headaches and colds.","Hansaplast-Bandages- Description: Hansaplast bandages are adhesive bandages.- Mainly Used For:- Protecting and aiding in the healing of minor wounds. - Available in various sizes and types.","Ritonavir - Description: Ritonavir is an antiretroviral medication.- Mainly Used For:- Part of combination therapy for HIV/AIDS.- Reducing the viral load and managing the infection."]
var myIndex = 0
class medicines: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    
    var searching = false;
    var searchedMedicines = [String]()
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
        searchController.searchBar.placeholder = "Search Medicines"
    }

}
extension medicines : UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate,UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty
        {
            searching = true
            searchedMedicines.removeAll()
            for medicineName in medicineNames {
                if medicineName.uppercased().contains(searchText.uppercased())
                {
                    searchedMedicines.append(medicineName)
                }
            }
        }
        else
        {
            searching = false
            searchedMedicines.removeAll()
            searchedMedicines = medicineNames
        }
        mytable.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchedMedicines.removeAll()
        mytable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching
        {
            return searchedMedicines.count
        }
        else
        {
            return medicineNames.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tablecell = mytable.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath)
        if searching {
                tablecell.textLabel?.text = searchedMedicines[indexPath.row]
            } else {
                tablecell.textLabel?.text = medicineNames[indexPath.row]
            }
            
            return tablecell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mytable.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "medicines", sender: self)
    }
    
}
