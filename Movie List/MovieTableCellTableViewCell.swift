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
    @IBOutlet weak var hasSeenButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func hasSeenButtonClicked(_ sender: Any) {
        let unseenTitle = "Unseen"
        let seenTitle = "Seen"
        hasSeenButton.setTitle(seenTitle, for: .normal)
        print(hasSeenButton.titleLabel?.text)
        if let buttonText = hasSeenButton.titleLabel?.text {
            if buttonText == "Seen" {
                hasSeenButton.setTitle(unseenTitle, for: .normal)
            }
        }
        
    }
}

