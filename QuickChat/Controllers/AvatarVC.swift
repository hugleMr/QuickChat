//
//  AvatarVC.swift
//  QuickChat
//
//  Created by thanhbh on 5/16/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import UIKit

class AvatarVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cltAvatar: UICollectionView!
    @IBOutlet weak var sgmColor: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cltAvatar.delegate = self
        cltAvatar.dataSource = self
    }

    @IBAction func btnBackPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sgmColorChanged(_ sender: UISegmentedControl) {
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = cltAvatar.dequeueReusableCell(withReuseIdentifier: AVATAR_CELL, for: indexPath) as? AvatarCollectionCell {
            return cell
        }
        return UICollectionViewCell()
    }
}
