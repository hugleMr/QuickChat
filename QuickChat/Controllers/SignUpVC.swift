//
//  SignUpVC.swift
//  QuickChat
//
//  Created by Bùi Huy Thanh on 5/13/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtRePass: UITextField!
    @IBOutlet weak var imgUser: UIImageView!
    
    var avatarName = "profileDefault"
    var avatarType = AvatarType.dark
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    var bgColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGestureBackground = UITapGestureRecognizer(target: self, action: #selector(self.backgroundTapped(_:)))
        self.view.addGestureRecognizer(tapGestureBackground)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        if UserDataService.instance.userData.avatarName != "" {
            avatarName = UserDataService.instance.userData.avatarName
            if (avatarName.hasPrefix("light")) {
                avatarType = .light
//                imgUser.layer.backgroundColor = UIColor.lightGray.cgColor
            } else if (avatarName.hasPrefix("dark")){
                avatarType = .dark
//                imgUser.layer.backgroundColor = UIColor.darkGray.cgColor
            }
            imgUser.image = UIImage(named: avatarName)
        }
        if bgColor != nil {
            imgUser.backgroundColor = bgColor!
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? AvatarVC {
            destinationViewController.avatarType = avatarType
        }
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
    
    @IBAction func btnGenerateBackgroundPressed(_ sender: UIButton) {
        let red = CGFloat(arc4random_uniform(255)) / 255
        let green = CGFloat(arc4random_uniform(255)) / 255
        let blue = CGFloat(arc4random_uniform(255)) / 255
        bgColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        imgUser.backgroundColor = bgColor
    }
}
