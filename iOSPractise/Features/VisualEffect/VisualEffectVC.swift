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
        let txtStyle = TextStyle.init(size: 50, font: CustomFont.SnellRoundhand, color: UIColor.white)
        
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
        
        // Reference: http://nickthomas55.pixnet.net/blog/post/220808693-ios---%E6%A8%A1%E7%B3%8A%E6%95%88%E6%9E%9C-uivibrancyeffect
        let vibrancyEffect = UIVibrancyEffect.init(blurEffect: blurEffect)
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyView.frame = view.bounds
        visualEffectView.contentView.addSubview(vibrancyView)
        
        let vibrancyLabel = UILabel(frame: CGRect.zero)
        vibrancyLabel.text = "Vibrancy Label"
        vibrancyLabel.config(textStyle: txtStyle)
        vibrancyLabel.sizeToFit()
        vibrancyView.contentView.addSubview(vibrancyLabel)
        vibrancyLabel.center = CGPoint.init(x: view.center.x, y: view.bounds.height * 0.8)

        let normalLabel = UILabel(frame: CGRect.zero)
        normalLabel.text = "Normal Label"
        normalLabel.config(textStyle: txtStyle)
        normalLabel.sizeToFit()
        view.addSubview(normalLabel)
        normalLabel.center = CGPoint.init(x: view.center.x, y: view.bounds.height * 0.9)

        #warning("使用 SnellRoundhand-Black 字體，會有字首字尾被切掉的現象")
        
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
