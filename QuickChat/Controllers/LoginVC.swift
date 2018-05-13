//
//  LoginVC.swift
//  QuickChat
//
//  Created by Bùi Huy Thanh on 5/12/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGestureBackground = UITapGestureRecognizer(target: self, action: #selector(self.backgroundTapped(_:)))
        self.view.addGestureRecognizer(tapGestureBackground)
    }

    @IBAction func btnClosePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnSignUpPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_SIGN_UP, sender: nil)
    }
    
    @IBAction func unwindToLoginVC(unwindSegue: UIStoryboardSegue){}

}
