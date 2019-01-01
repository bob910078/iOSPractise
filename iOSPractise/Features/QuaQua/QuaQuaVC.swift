//
//  QuaQuaVC.swift
//  iOSPractise
//
//  Created by Bob Chang on 1/1/19.
//  Copyright © 2019 BobChang. All rights reserved.
//

import UIKit

class QuaQuaVC: UIViewController {
    
    
    var effectView = UIVisualEffectView()
    
    var contentView = UIImageView()
    
    var maskLayer = CAShapeLayer()
    
    var gesturePath = UIBezierPath()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(effectView)
        self.view.addSubview(contentView)
        
        
        effectView.frame = self.view.bounds
        effectView.effect = UIBlurEffect(style: .dark)
        
        contentView.frame = self.view.bounds
        contentView.contentMode = .scaleAspectFill
        contentView.image = UIImage.init(named: "48406256_336755740493860_4134219825595547648_n.jpg")
        
        maskLayer.strokeColor = UIColor.green.cgColor   // 不給不行，給clear也會畫不出來
        maskLayer.lineCap = CAShapeLayerLineCap.round
        maskLayer.lineWidth = 20
        
        contentView.layer.mask = maskLayer
        
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(panGesture(sender:)))
        self.view.addGestureRecognizer(pan)
    }
    
    
    @objc func panGesture(sender: UIGestureRecognizer) {
        let point = sender.location(in: contentView)
        switch sender.state {
        case .began:
            gesturePath.move(to: point)
        case .changed:
            gesturePath.addLine(to: point)
            gesturePath.move(to: point)
            maskLayer.path = gesturePath.cgPath
        default:
            break
        }
    }
    
    
}
