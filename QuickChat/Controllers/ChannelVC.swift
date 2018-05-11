//
//  ChannelVC.swift
//  QuickChat
//
//  Created by thanhbh on 5/10/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
