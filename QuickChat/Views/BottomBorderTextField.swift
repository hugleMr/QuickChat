//
//  BottomBorderTextField.swift
//  QuickChat
//
//  Created by thanhbh on 5/11/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

@IBDesignable
class BottomBorderTextField: UITextField {

    fileprivate func customizedView() {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = #colorLiteral(red: 0.3568627451, green: 0.6235294118, blue: 0.7960784314, alpha: 1)
        border.borderWidth = width
        border.cornerRadius = 5.0
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        self.borderStyle = .none
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
//    override func layoutSubviews() {
//        customizedView()
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }

}
