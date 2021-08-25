//
//  FriendsCollectionCell.swift
//  VKApp_TalalayVV
//
//  Created by Виталий Талалай on 24.08.2021.
//

import UIKit

class FriendsCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var friendImageView: UIImageView!
    
    func configure(photo: UIImage) {
        friendImageView.image = photo
    }
}
