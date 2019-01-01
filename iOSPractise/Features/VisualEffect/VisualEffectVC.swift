//
//  VisualEffectVC.swift
//  iOSPractise
//
//  Created by Bob Chang on 1/1/19.
//  Copyright © 2019 BobChang. All rights reserved.
//

import UIKit

class VisualEffectVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let img = UIImage.init(named: "300px-054Psyduck")
        
        // background
        let bgImageView = UIImageView.init(image: img)
        bgImageView.frame = view.bounds
        bgImageView.contentMode = .scaleAspectFill
        view.addSubview(bgImageView)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let visualEffectView = UIVisualEffectView.init(effect: blurEffect)
        visualEffectView.frame = self.view.bounds
        view.addSubview(visualEffectView)
        
        // foreground
        let fgImageView = UIImageView.init(image: img)
        fgImageView.frame.size = CGSize.init(width: 300, height: 300)
        fgImageView.center = view.center
        fgImageView.contentMode = .scaleAspectFill
        fgImageView.layer.cornerRadius = 80
        fgImageView.clipsToBounds = true
        view.addSubview(fgImageView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
