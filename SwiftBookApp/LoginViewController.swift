//
//  LoginViewController.swift
//  SwiftBookApp
//
//  Created by Anna on 23.04.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    @IBAction func logInPressed() {
        guard
            loginTF.text == user.login,
            passwordTF.text == user.password
        else {
            showAlert(title: "Неверно введены данные",
                      message: "Пожалуйста, введите верные данные")
            return
        }
    }

}
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default) { _ in
            self.loginTF.text = ""
        }
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}
