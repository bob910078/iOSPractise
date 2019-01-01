//
//  DataStructure.swift
//  iOSPractise
//
//  Created by Bob Chang on 1/1/19.
//  Copyright © 2019 BobChang. All rights reserved.
//

import Foundation
import UIKit

enum PractiseFeature {
    case visualEffect, quaqua
    
    var title: String {
        switch self {
        case .visualEffect:
            return "Visual Effect"
        case .quaqua:
            return "Qua Qua"
        }
    }
}


struct TextStyle {
    var size: CGFloat
    var font: UIFont
    var color: UIColor
    
    init(size: CGFloat? = nil, font: UIFont? = nil, color: UIColor? = nil) {
        self.size = size ?? 32
        self.font = font ?? UIFont.systemFont(ofSize: 32)
        self.color = color ?? UIColor.gray
    }
}


extension UILabel {
    func config(textStyle: TextStyle) {
        self.textColor = textStyle.color
        self.font = textStyle.font.withSize(textStyle.size)
    }
}


enum CustomFont {
    
    static var standardSize: CGFloat = 32
    
    enum PingFangTC {

        static var medium: UIFont {
            get {
                let sz = CustomFont.standardSize
                return UIFont.init(name: "PingFangTC-Medium", size: sz) ?? UIFont.systemFont(ofSize: sz)
            }
        }
        
    }
    
    static var SnellRoundhand: UIFont {
        get {
            let sz = CustomFont.standardSize
            return UIFont(name: "SnellRoundhand-Black", size: sz) ?? UIFont.systemFont(ofSize: sz)
        }
    }
}
