//
//  ViewController.swift
//  SampleAnimation
//
//  Created by AXLT0220-AP on 2022/03/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var targetView: UIView!
    
    @IBAction func tapStartButton(_ sender: Any) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        animation.fromValue = 0
        animation.toValue = 20
        animation.duration = 1
        targetView.layer.add(animation, forKey: "cornerRadius")
        targetView.layer.cornerRadius = 20
    }
}

