//
//  ViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
   
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    private let userName = "Stas"
    private let password = "Testov"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userGreetingName = "Hello, \(userNameTextField.text ?? "hacker")!"
    }
    
   
    
    
    @IBAction func forgotPressed(_ sender: UIButton) {
        switch sender {
        case forgotNameButton:
            showAlert(type: "name", data: userName)
        default:
            showAlert(type: "password", data: password)
            passwordTextField.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? GreetingViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    private func showAlert(type: String, data: String) {
        let alert = UIAlertController(
            title: "Let me see...",
            message: "Your \(type) is \(data) 🔑",
            preferredStyle: .alert
        )
        
        let alertAction = UIAlertAction(title: "Oki Doki", style: .default)
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }

}

