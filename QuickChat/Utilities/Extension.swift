//
//  Extension.swift
//  QuickChat
//
//  Created by Bùi Huy Thanh on 5/13/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

extension UIViewController {
    @objc func backgroundTapped(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}
