//
//  CustomCell.swift
//  iOSPractise
//
//  Created by Bob Chang on 1/1/19.
//  Copyright © 2019 BobChang. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    static let id = "CustomCell"
    
    @IBOutlet weak var myLabel: UILabel!
    
    func config(title: String?) {
        myLabel.text = title
    }
    
}
