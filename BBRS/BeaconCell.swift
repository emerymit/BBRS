//
//  BeaconCell.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import UIKit

class BeaconCell: UITableViewCell {
    @IBOutlet weak var _lblName: UILabel!
    @IBOutlet weak var _lblMajor: UILabel!
    @IBOutlet weak var _lblMinor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
