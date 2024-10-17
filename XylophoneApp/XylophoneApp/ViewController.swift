//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Balgabek Zhaksylyk on 17.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if let noteName = sender.titleLabel?.text {
                print("Pressed: \(noteName)")
                playSound(name: noteName)
            } else {
                print("Error: Button does not have a title.")
            }
    }
    
    func playSound(name: String){
        guard let url = Bundle.main.url(forResource: name, withExtension: "wav") else {
                print("Error: Sound file not found for \(name)")
                return
            }
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
    }
}

