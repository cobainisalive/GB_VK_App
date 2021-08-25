//
//  GroupsSearchCell.swift
//  VKApp_TalalayVV
//
//  Created by Виталий Талалай on 24.08.2021.
//

import UIKit

class GroupsSearchCell: UITableViewCell {

    @IBOutlet weak var groupLogoImageView: UIImageView!
    @IBOutlet weak var groupNameLabel: UILabel!
   
    func configure(group: Group) {
        groupLogoImageView.image = group.logo
        groupNameLabel.text = group.name
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
