//
//  CustomTableViewCell.swift
//  ASMDRevTableView
//
//  Created by Mac on 12/09/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var No1 : UITextField!
    @IBOutlet weak var No2 : UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
