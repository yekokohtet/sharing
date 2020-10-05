//
//  Extensions.swift
//  Form
//
//  Created by Ye Ko Ko Htet on 05/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit
import Foundation

extension UIImageView {
    func circleImg() {
        let radius = self.bounds.width / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 1.0
        self.clipsToBounds = true
    }
}
