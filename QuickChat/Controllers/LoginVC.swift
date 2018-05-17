//
//  LoginVC.swift
//  QuickChat
//
//  Created by Bùi Huy Thanh on 5/12/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGestureBackground = UITapGestureRecognizer(target: self, action: #selector(self.backgroundTapped))
        self.view.addGestureRecognizer(tapGestureBackground)
    }

    @IBAction func btnClosePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnLoginPressed(_ sender: UIButton) {
        guard let email = txtUsername.text, txtUsername.text != "" else {
            return
        }
        guard let pass = txtPassword.text, txtPassword.text != "" else {
            return
        }
        AuthService.instance.loginUser(user: User(email, pass)) { (success) in
            if success {
                print(AuthService.instance.authToken!)
            } else {
                print("Login failed!")
            }
        }
    }
    
    @IBAction func btnSignUpPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_SIGN_UP, sender: nil)
    }
    
    @IBAction func unwindToLoginVC(unwindSegue: UIStoryboardSegue){}

}
