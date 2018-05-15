//
//  RoundedButton.swift
//  QuickChat
//
//  Created by thanhbh on 5/15/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.setNeedsLayout()
        }
    }

    fileprivate func customizedView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customizedView()
    }

}
