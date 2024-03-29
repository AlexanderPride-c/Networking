//
//  TableViewCell.swift
//  Networking
//
//  Created by Александр Прайд on 16.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var courseImageView: UIImageView!
    @IBOutlet weak var nameOfCourse: UILabel!
    @IBOutlet weak var numberOfLessons: UILabel!
    @IBOutlet weak var numberOfTests: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
