//
//  ContactListItemTableViewCell.swift
//  Form
//
//  Created by Ye Ko Ko Htet on 03/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class ContactListItemTableViewCell: UITableViewCell {
    
    static let identifier = "ContactListItemTableViewCell"

    @IBOutlet weak var ivProfileImage: UIImageView!
    @IBOutlet weak var lblProfileName: UILabel!
    @IBOutlet weak var lblPostedDate: UILabel!
    @IBOutlet weak var lblPostDescription: UILabel!
    @IBOutlet weak var ivPostImage: UIImageView!
    
    var post: PostVO? {
        didSet {
            if let post = post {
                ivProfileImage.image = UIImage(named: post.profileImage)
                lblProfileName.text = post.profileName
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ivProfileImage.circleImg()
//        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

struct PostVO {
    var profileImage: String
    var profileName: String
    var postedDate: String
    var postDesc: String
    var postImage: String
}
