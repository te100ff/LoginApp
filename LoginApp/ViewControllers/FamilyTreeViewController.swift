//
//  FamilyTreeViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 02.04.2021.
//

import UIKit

class FamilyTreeViewController: UIViewController {
    
    @IBOutlet weak var topNameLabel: UILabel!
    @IBOutlet weak var topAboutLabel: UILabel!
    @IBOutlet weak var botomNameLabel: UILabel!
    @IBOutlet weak var botomAboutLabel: UILabel!
    
    var topName = ""
    var topAbout = ""
    var botomName = ""
    var botomAbout = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topNameLabel.text = topName
        topAboutLabel.text = topAbout
        botomNameLabel.text = botomName
        botomAboutLabel.text = botomAbout
    }
    
    @IBAction func backPressed() {
        dismiss(animated: true)
    }
    
}
