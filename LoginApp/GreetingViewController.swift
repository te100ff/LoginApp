//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 30.03.2021.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var userGreetingName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = userGreetingName
    }
   
    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
    
   
}
