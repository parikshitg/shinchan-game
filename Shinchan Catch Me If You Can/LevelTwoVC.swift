//
//  LevelTwoVC.swift
//  Shinchan Catch Me If You Can
//
//  Created by Parikshit Gothwal on 31/08/19.
//  Copyright © 2019 Urantia Tech. All rights reserved.
//

import UIKit

class LevelTwoVC: UIViewController {

    @IBOutlet weak var himawari1: UIImageView!
    @IBOutlet weak var himawari2: UIImageView!
    @IBOutlet weak var himawari3: UIImageView!
    @IBOutlet weak var himawari4: UIImageView!
    @IBOutlet weak var himawari5: UIImageView!
    @IBOutlet weak var himawari6: UIImageView!
    @IBOutlet weak var himawari7: UIImageView!
    @IBOutlet weak var himawari8: UIImageView!
    @IBOutlet weak var himawari9: UIImageView!
    @IBOutlet weak var himawari10: UIImageView!
    @IBOutlet weak var himawari11: UIImageView!
    @IBOutlet weak var himawari12: UIImageView!
    @IBOutlet weak var himawari13: UIImageView!
    @IBOutlet weak var himawari14: UIImageView!
    @IBOutlet weak var himawari15: UIImageView!
    @IBOutlet weak var himawari16: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var score = 0
    var counter = 0
    var timer = Timer()
    var hideTimer = Timer()
    var himawariArray = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //check the highscores
        let levelTwoHighScore = UserDefaults.standard.object(forKey: "leveltwohighscore")
        
        if levelTwoHighScore == nil {
            highScoreLabel.text = "0"
        }
        
        if let newScore = levelTwoHighScore as? Int {
            highScoreLabel.text = String(newScore)
        }
        
        //printing var score in scoreLabel
        scoreLabel.text = "SCORE : \(score)"
        
        //creating gesture Recognizers
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer13 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer14 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer15 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        let recognizer16 = UITapGestureRecognizer(target: self, action: #selector(LevelTwoVC.increaseScores))
        
        //add recognizers to images
        himawari1.addGestureRecognizer(recognizer1)
        himawari2.addGestureRecognizer(recognizer2)
        himawari3.addGestureRecognizer(recognizer3)
        himawari4.addGestureRecognizer(recognizer4)
        himawari5.addGestureRecognizer(recognizer5)
        himawari6.addGestureRecognizer(recognizer6)
        himawari7.addGestureRecognizer(recognizer7)
        himawari8.addGestureRecognizer(recognizer8)
        himawari9.addGestureRecognizer(recognizer9)
        himawari10.addGestureRecognizer(recognizer10)
        himawari11.addGestureRecognizer(recognizer11)
        himawari12.addGestureRecognizer(recognizer12)
        himawari13.addGestureRecognizer(recognizer13)
        himawari14.addGestureRecognizer(recognizer14)
        himawari15.addGestureRecognizer(recognizer15)
        himawari16.addGestureRecognizer(recognizer16)
        
        //putting shinchan images in shichanArray
        himawariArray.append(himawari1)
        himawariArray.append(himawari2)
        himawariArray.append(himawari3)
        himawariArray.append(himawari4)
        himawariArray.append(himawari5)
        himawariArray.append(himawari6)
        himawariArray.append(himawari7)
        himawariArray.append(himawari8)
        himawariArray.append(himawari9)
        himawariArray.append(himawari10)
        himawariArray.append(himawari11)
        himawariArray.append(himawari12)
        himawariArray.append(himawari13)
        himawariArray.append(himawari14)
        himawariArray.append(himawari15)
        himawariArray.append(himawari16)
        
        for himawari in himawariArray{
            himawari.isHidden = true
        }
    }
    
    @objc func increaseScores(){
        //this is what happens when recognizers get caught
        score += 1
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func countDown(){
        counter = counter - 1
        timeLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            for himawari in himawariArray{
                himawari.isHidden = true
            }
            
            
            //checking highscores
            if self.score > Int(highScoreLabel.text!)! {
                UserDefaults.standard.set(self.score, forKey: "leveltwohighscore")
                highScoreLabel.text = String(self.score)
            }
            
            //creating alert for user saying your time is Up!
            let alert = UIAlertController(title: "Time", message: "Your Time is UP!!", preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                self.score = 0
                self.scoreLabel.text = "SCORE : \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
            }
            alert.addAction(ok)
            
            //for replaying the level
            let replay = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                //this will happen when user clicks on Replay because we are using handlers
                self.score = 0
                self.scoreLabel.text = "SCORE : \(self.score)"
                
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
                
                //run timer again
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelTwoVC.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(LevelTwoVC.hideHimawari), userInfo: nil, repeats: true)
                
            }
            alert.addAction(replay)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    @objc func hideHimawari(){
        
        for himawari in himawariArray{
            himawari.isHidden = true
        }
        
        
        //creating a random number betweeb 0-8 to unhide a random shichan image
        let randomNumber = Int(arc4random_uniform(UInt32(himawariArray.count - 1)))
        
        //unhiding a random shinchan image
        himawariArray[randomNumber].isHidden = false
    }

    @IBAction func startButtonClicked(_ sender: Any) {
        
        //enabling images for userInteraction
        himawari1.isUserInteractionEnabled = true
        himawari2.isUserInteractionEnabled = true
        himawari3.isUserInteractionEnabled = true
        himawari4.isUserInteractionEnabled = true
        himawari5.isUserInteractionEnabled = true
        himawari6.isUserInteractionEnabled = true
        himawari7.isUserInteractionEnabled = true
        himawari8.isUserInteractionEnabled = true
        himawari9.isUserInteractionEnabled = true
        himawari10.isUserInteractionEnabled = true
        himawari11.isUserInteractionEnabled = true
        himawari12.isUserInteractionEnabled = true
        himawari13.isUserInteractionEnabled = true
        himawari14.isUserInteractionEnabled = true
        himawari15.isUserInteractionEnabled = true
        himawari16.isUserInteractionEnabled = true
        
        //creating timers
        counter = 30
        timeLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelTwoVC.countDown), userInfo: nil, repeats: true)
        
        //for unhiding random shinchan images repeatedly after 0.5 seconds
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(LevelTwoVC.hideHimawari), userInfo: nil, repeats: true)
    }
    

}
