//
//  ViewController.swift
//  Homew
//
//  Created by Владимир Воробьев on 20.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapOnLogin(_ sender: Any) {
        guard let loginText = loginTextField.text,
        let passwordText = passwordTextField.text else{
            return
        }
        if loginText == "hello" && passwordText == "12345"{
            print("Successful login")
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return checkForValidationData()
    }
    func checkForValidationData() -> Bool {
        guard let loginText = loginTextField.text,
              let passwordText = passwordTextField.text else{
                  return false
              }
        let isValidData = loginText == "hello" && passwordText == "12345"
        return isValidData
    }
}

