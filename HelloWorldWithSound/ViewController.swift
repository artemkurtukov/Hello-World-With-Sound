//
//  ViewController.swift
//  HelloWirldWithSound
//
//  Created by Alex on 26.02.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    let buttonSelector = ["👾": "C", "👻": "D", "🍎": "E", "🤖": "F", "🎃": "G", "🤩": "A", "🤢": "B"]
    
    @IBAction func buttonClockedAction(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World from \n \(sender.currentTitle!)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    
        playSound(note: buttonSelector[sender.currentTitle!]!)
        
    }
        
    func playSound(note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}

