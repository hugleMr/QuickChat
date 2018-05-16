//
//  SignUpVC.swift
//  QuickChat
//
//  Created by Bùi Huy Thanh on 5/13/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit
import Toast_Swift

class SignUpVC: UIViewController {
    
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtRePass: UITextField!
    @IBOutlet weak var imgUser: UIImageView!
    
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGestureBackground = UITapGestureRecognizer(target: self, action: #selector(self.backgroundTapped(_:)))
        self.view.addGestureRecognizer(tapGestureBackground)
    }
    
    @IBAction func btnCreateAccountPressed(_ sender: UIButton) {
        guard let name = txtUsername.text, txtUsername.text != "" else {
            return
        }
        guard let email = txtEmail.text, txtEmail.text != "" else {
            return
        }
        guard let pass = txtPassword.text, txtPassword.text != "" else {
            return
        }
        guard let rePass = txtRePass.text, txtRePass.text != "" else {
            return
        }
        if rePass != pass {
            return
        }
        //AuthService.instance.registerUser(user: User(email, pass)) { (success) in
        //    if success {
        //        self.dismiss(animated: true, completion: nil)
        //    } else {
        //        print("User cannot be registered!")
        //    }
        //}
        AuthService.instance.createUser(name: name, email: email, avatarName: avatarName, avatarColor: avatarColor) { (success) in
            if success {
                self.performSegue(withIdentifier: TO_CHANNEL, sender: nil)
            } else {
                print("User cannot be created!")
            }
        }
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnClosePressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CHANNEL, sender: nil)
    }
    
    @IBAction func btnChooseAvatarPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_AVATAR, sender: nil)
    }
    
    @IBAction func btnGenerateBackground(_ sender: UIButton) {
    }
}
