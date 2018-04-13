//
//  ResultViewController.swift
//  gatya
//
//  Created by 田嶋智洋 on 2018/03/26.
//  Copyright © 2018年 田嶋智洋. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var haikeiImageView: UIImageView!
    @IBOutlet weak var monstarImageView: UIImageView!
    var monstarArray: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layer:CALayer = monstarImageView.layer
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = M_PI / 2.0
        animation.duration = 0.5           // 0.5秒で90度回転
        animation.repeatCount = MAXFLOAT;   // 無限に繰り返す
        animation.isCumulative = true;         // 効果を累積
        layer.add(animation, forKey: "ImageViewRotation")
        
        let number = Int(arc4random_uniform(10))
        monstarArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!]
        monstarImageView.image = monstarArray[number]
        
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 6 {
            haikeiImageView.image = UIImage(named: "bg_red.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
