//
//  cell.swift
//  emailpasswodandnum
//
//  Created by Karthiga on 8/23/23.
//

import UIKit

class cell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var lbl2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
