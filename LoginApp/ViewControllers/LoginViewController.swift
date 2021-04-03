//
//  ViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Public properties
    let user = User(about: Person(), relations: [.son, .wife])
        
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetingVC = segue.destination as! WelcomeTabViewController
        
        guard let viewControlers = greetingVC.viewControllers else { return }
        
        for viewController in viewControlers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userGreetingName = user.about.name
                welcomeVC.userGreetingSurname = user.about.surname
            } else if let photoVC = viewController as? PhotoViewController {
                photoVC.photoName = user.photo
            } else if let navigationVC = viewController as? BioNavigationViewController {
                let aboutVC = navigationVC.topViewController as! BioViewController
                aboutVC.user = user
                
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - IB Actions
    @IBAction func logInPressed() {
        if userNameTextField.text != user.login || passwordTextField.text != user.password {
            showAlertLoginButton()
        }
    }
    
    @IBAction func forgotPressed(_ sender: UIButton) {
        sender == forgotNameButton
            ? showAlertLoginPassword(type: "name", data: user.login + "🦇" )
            : showAlertLoginPassword(type: "password", data: user.password + "🔑")
        passwordTextField.text = ""
    }
    
    // MARK: - Private methods
    private func showAlertLoginPassword(type: String, data: String) {
        let alert = UIAlertController(
            title: "Let me see...",
            message: "Your \(type) is \(data)",
            preferredStyle: .alert
        )
        
        let alertAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    private func showAlertLoginButton() {
        let alert = UIAlertController(
            title: "Wrong data",
            message: "Please, check your name and password",
            preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(alertAction)
        present(alert, animated: true) { self.passwordTextField.text = "" }
    }
    
}

// MARK: - Return key setup
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            self.logInPressed()
            self.performSegue(withIdentifier: "Segue", sender: nil)
            
        }
        return true
    }
    
}

