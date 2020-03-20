//
//  MovieTableCellTableViewCell.swift
//  Movie List
//
//  Created by Wesley Ryan on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableCellTableViewCell: UITableViewCell {
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var MovieSeenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
