//
//  ViewController.swift
//  SampleQuiz
//
//  Created by AXLT0220-AP on 2022/03/27.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapSystemSound(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(1000) {
            //none
        }
    }
    
    @IBAction func tapCustomSound(_ sender: Any) {
        let soundUrl = Bundle.main.url(forResource: "custom", withExtension: "mp3")
        
        var soundId: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundUrl! as CFURL, &soundId)
        AudioServicesPlaySystemSoundWithCompletion(soundId){
            //none
        }
    }
    
    @IBAction func taoVibration(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
            //none
        }
    }
}
