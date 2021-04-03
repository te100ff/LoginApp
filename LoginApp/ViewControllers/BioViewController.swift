//
//  BioViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 02.04.2021.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var aboutTextView: UITextView!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutTextView.text = user.about.bio
        navigationItem.title = user.about.name + " " + user.about.surname
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let familyVC = segue.destination as! FamilyTreeViewController
        
        
        if let topName = user.relations.first {
            familyVC.topName = topName.rawValue
            familyVC.topAbout = topName.about
            
        }
        
        if let botomName = user.relations.last {
            familyVC.botomName = botomName.rawValue
            familyVC.botomAbout = botomName.about
            
        }
        
    }
}
