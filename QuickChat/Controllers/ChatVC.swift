//
//  ChatVC.swift
//  QuickChat
//
//  Created by thanhbh on 5/10/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var btnMenu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.revealViewController()?.isLeftPresentViewOnTop = false
        self.revealViewController()?.setLeftViewRevealWidth(self.view.frame.width - (btnMenu.frame.width + btnMenu.frame.minX * 2) , animated: true)
        btnMenu.addTarget(self.revealViewController(), action: #selector(PBRevealViewController.revealLeftView), for: .touchUpInside)
        
    }

}
