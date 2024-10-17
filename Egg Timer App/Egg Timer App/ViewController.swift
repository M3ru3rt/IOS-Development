//
//  ViewController.swift
//  Egg Timer App
//
//  Created by Balgabek Zhaksylyk on 17.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var softEggImageView: UIImageView!
    @IBOutlet weak var mediumEggImageView: UIImageView!
    @IBOutlet weak var hardEggImageView: UIImageView!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var softEggButton: UIButton!
    @IBOutlet weak var mediumEggButton: UIButton!
    @IBOutlet weak var hardEggButton: UIButton!
    
    var timer = Timer()
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var totalTime = 0
    var secondPassed = 0
    var player: AVAudioPlayer!
    
    @IBAction func softEggButtonTapped(_ sender: UIButton) {
        startEggTimer(for: "Soft")
    }
    
    @IBAction func mediumEggButtonTapped(_ sender: UIButton) {
        startEggTimer(for: "Medium")
    }
    @IBAction func hardEggButtonTapped(_ sender: UIButton) {
        startEggTimer(for: "Hard")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        softEggButton.layer.cornerRadius = 15
        mediumEggButton.layer.cornerRadius = 15
        hardEggButton.layer.cornerRadius = 15
    }
    
    func startEggTimer(for hardness: String) {
        timer.invalidate()
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondPassed = 0
                
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondPassed < totalTime {
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            playAlarmSound()
        }
    }
    
    
    func playAlarmSound() {
            if let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "wav") {
                do {
                    player = try AVAudioPlayer(contentsOf: url)
                    player.play()
                    print("Playing alarm sound...")
                } catch {
                    print("Error: Could not load and play sound file - \(error.localizedDescription)")
                }
            } else {
                print("Error: Sound file not found.")
            }
        }
   
}

