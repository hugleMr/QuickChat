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
    @objc enum DegreeUnit: Int {
        case degree = 0, radian, gradian
    }
    
    @IBInspectable var repeated: UInt = 0 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var resolution: UInt = 256 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var angle: Double = 0 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var degree: DegreeUnit = .radian {
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
        let subdivisions:CGFloat = CGFloat(resolution / (repeated + 1))
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = []
        for i in 0 ..< 512 {
            let pointColor: CGColor = UIColor(hue: CGFloat(i)/subdivisions, saturation: 1, brightness: 1, alpha: 1).cgColor
            gradientLayer.colors?.append(pointColor)
            }
//        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        var x = 0.5 * cos(angle)
        var y = 0.5 * sin(angle)
        if x != 0 && abs(tan(angle)) <= 1 {
            x = x < 0 ? 0 : 1
            y = 0.5 * ( 1 + tan(angle))
        } else {
            x = 0.5 * (1 + 1 / tan(angle))
            y = y < 0 ? 0 : 1
        }
        gradientLayer.startPoint = CGPoint(x: x, y: y)
        gradientLayer.endPoint = CGPoint(x: 1 - x, y: 1 - y)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension FloatingPoint {
    func sign() -> Double {
        return (self < Self(0) ? -1 : 1)
    }
}
