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
        
        for member in user.relations {
            if member == user.relations.first(where: { $0 == .wife }) {
                familyVC.topName = member.rawValue
                familyVC.topAbout = member.about
            } else {
                familyVC.botomName = member.rawValue
                familyVC.botomAbout = member.about
            }
        }
    }
    
}
