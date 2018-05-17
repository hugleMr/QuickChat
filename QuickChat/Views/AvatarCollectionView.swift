//
//  AvatarCollection.swift
//  QuickChat
//
//  Created by thanhbh on 5/16/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

@IBDesignable
class AvatarCollectionView: UICollectionView {
    
    
    @IBInspectable
    var numberColumns: UInt = 4 {
        didSet {
//            customizedView()
            self.setNeedsLayout()
        }
    }
    
    fileprivate func customizedView() {
        if numberColumns != 0 {
            if let flowLayout = self.collectionViewLayout as? UICollectionViewFlowLayout {
                let horizontalSpacing = flowLayout.scrollDirection == .vertical ? flowLayout.minimumInteritemSpacing : flowLayout.minimumLineSpacing
                let sectionInset = horizontalSpacing
                let cellsPerRow = CGFloat(numberColumns)
                flowLayout.sectionInset = UIEdgeInsetsMake(0, sectionInset, 0, sectionInset)
                let cellWidth = (self.bounds.width - max(0, cellsPerRow - 1) * horizontalSpacing - sectionInset * 2.5 - CGFloat(1)) / cellsPerRow
                flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
//                print(self.bounds.width >= (max(0, cellsPerRow - 1) * horizontalSpacing + sectionInset * 2 + cellWidth * cellsPerRow))
            }
        }
    }
    
//    override func layoutSubviews() {
//        customizedView()
//    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        customizedView()
//    }
//
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customizedView()
    }
    
}
