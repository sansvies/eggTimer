//
//  ViewController.swift
//  Eierkocher
//
//  Created by Alex Son on 13.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    var timRemaining = 60
    var timRemaining2 = 100
    var timRemaining3 = 150
    let egg1: Int = 300
    let egg2: Int = 420
    let egg3: Int = 600
    
    var selectedType = Array(repeating: false, count: 3)
    var timer: Timer!

    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func eggButton1(_ sender: UIButton) {
        timerLabel.text = "00:05:00"
    }
    @IBAction func eggButton2(_ sender: UIButton) {
        timerLabel.text = "00:07:00"
    }
    @IBAction func eggButton3(_ sender: UIButton) {
        timerLabel.text = "00:10:00"
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        timer.invalidate()
    }
    @IBAction func startButton(_ sender: UIButton) {
        

        if timerLabel.text == "00:05:00" {
            //   timerLabel.text = "First button Selected"
            timer = Timer.scheduledTimer(timeInterval:  1, target: self, selector: #selector(step1), userInfo: nil, repeats: true)
        } else if timerLabel.text == "00:07:00" {
            timer = Timer.scheduledTimer(timeInterval:  1, target: self, selector: #selector(step2), userInfo: nil, repeats: true)
        } else if timerLabel.text == "00:10:00" {timer = Timer.scheduledTimer(timeInterval:  1, target: self, selector: #selector(step3), userInfo: nil, repeats: true)
        }
    }
    
    @objc func step1() {
        
            var hours: Int
            var minutes: Int
            var seconds: Int

            if timRemaining == 0 {
                timer?.invalidate()
            }
            timRemaining = timRemaining - 1
            hours = timRemaining / 3600
            minutes = (timRemaining % 3600) / 60
            seconds = (timRemaining % 3600) % 60
            timerLabel.text = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        }
    
    @objc func step2() {
        
            var hours: Int
            var minutes: Int
            var seconds: Int
        
            if timRemaining2 == 0 {
                timer?.invalidate()
            }
        timRemaining2 = timRemaining2 - 1
            hours = timRemaining2 / 3600
            minutes = (timRemaining2 % 3600) / 60
            seconds = (timRemaining2 % 3600) % 60
            timerLabel.text = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        }

    @objc func step3() {
            var hours: Int
            var minutes: Int
            var seconds: Int

            if timRemaining3 == 0 {
                timer?.invalidate()
            }
        timRemaining3 = timRemaining3 - 1
            hours = timRemaining3 / 3600
            minutes = (timRemaining3 % 3600) / 60
            seconds = (timRemaining3 % 3600) % 60
            timerLabel.text = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        }
    
}
