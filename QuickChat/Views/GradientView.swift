//
//  GradientView.swift
//  QuickChat
//
//  Created by thanhbh on 5/11/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var resolution: Int = 1 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
//    @IBInspectable var topColor: UIColor = UIColor.red {
//        didSet {
//            self.setNeedsLayout()
//        }
//    }
//
//    @IBInspectable var bottomColor: UIColor = UIColor.purple {
//        didSet {
//            self.setNeedsLayout()
//        }
//    }
    
    override func layoutSubviews() {
        let subdivisions:CGFloat = CGFloat(256 / (resolution == 0 ? 1 : resolution))
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = []
        for i in 0...255 {
            let pointColor: CGColor = UIColor(hue: CGFloat(i)/subdivisions, saturation: 1, brightness: 1, alpha: 1).cgColor
            gradientLayer.colors?.append(pointColor)
        }
//        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
