//
//  ENTableViewCell.swift
//  a
//
//  Created by 张建强 on 14/12/23.
//  Copyright (c) 2014年 张建强. All rights reserved.
//

import UIKit

class ENTableViewCell: UITableViewCell {

    @IBOutlet weak var lab: UILabel!
    

    
    var newNum :NSDictionary!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
