//
//  ViewController.swift
//  gatya
//
//  Created by 田嶋智洋 on 2018/03/26.
//  Copyright © 2018年 田嶋智洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gatya(_ sender: Any) {
        self.performSegue(withIdentifier: "result", sender: nil)
    }
    
}

