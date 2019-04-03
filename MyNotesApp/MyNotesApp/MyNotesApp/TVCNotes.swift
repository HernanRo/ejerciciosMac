//
//  TVCNotes.swift
//  MyNotesApp
//
//  Created by Nicthea Alvarez Platas on 3/20/19.
//  Copyright © 2019 LABMAC24. All rights reserved.
//

import UIKit

class TVCNotes: UITableViewCell {

    @IBOutlet weak var buDelete: UIButton!
    
    @IBOutlet weak var buEdit: UIButton!
    
    @IBOutlet weak var laTitle: UILabel!
    @IBOutlet weak var laDetails: UITextView!
    @IBOutlet weak var laDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setNotes(note:MyNotes){
        laTitle.text = note.title
        laDetails.text = note.details
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/dd/yy h:mm a"
        let now = dateFormat.string(from: note.date_save as! Date)
        laDate.text = now
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
