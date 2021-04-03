//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var userGreetingName = ""
    var userGreetingSurname = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "\(userGreetingName) \(userGreetingSurname)!"
    }
    
    
}
    
