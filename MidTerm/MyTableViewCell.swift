//
//  MyTableViewCell.swift
//  MidTerm
//
//  Created by MBPrDyson on 2016/3/28.
//  Copyright © 2016年 MBPrDyson. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabelSubTittle: UILabel!
    @IBOutlet weak var cellLabelTittle: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
