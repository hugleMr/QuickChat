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
    
    @IBInspectable var numberOfCellsPerRow: CGFloat = 4 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    fileprivate func customizedView() {
        if let flowLayout = self.collectionViewLayout as? UICollectionViewFlowLayout {
            let horizontalSpacing = flowLayout.scrollDirection == .vertical ? flowLayout.minimumInteritemSpacing : flowLayout.minimumLineSpacing
            flowLayout.sectionInset = UIEdgeInsetsMake(0, horizontalSpacing / 2, 0, horizontalSpacing / 2)
            let cellWidth = (self.bounds.width - max(0, numberOfCellsPerRow - 1) * horizontalSpacing - horizontalSpacing) / numberOfCellsPerRow
            
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
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
