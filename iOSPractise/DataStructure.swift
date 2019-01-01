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
