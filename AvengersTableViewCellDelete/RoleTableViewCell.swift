//
//  RoleTableViewCell.swift
//  SendData
//
//  Created by Chang Sophia on 4/25/19.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit

class RoleTableViewCell: UITableViewCell {
   
    
    @IBOutlet weak var avgImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
