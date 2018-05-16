//
//  AvatarCell.swift
//  QuickChat
//
//  Created by thanhbh on 5/16/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class AvatarCollectionCell: UICollectionViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    
    fileprivate func customizedView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
//    override func layoutSubviews() {
//        customizedView()
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customizedView()
    }

}
