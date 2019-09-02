//
//  LevelOneVC.swift
//  Shinchan Catch Me If You Can
//
//  Created by Parikshit Gothwal on 31/08/19.
//  Copyright © 2019 Urantia Tech. All rights reserved.
//

import UIKit

class LevelOneVC: UIViewController {

    
    @IBOutlet weak var shinchan1: UIImageView!
    @IBOutlet weak var shinchan2: UIImageView!
    @IBOutlet weak var shinchan3: UIImageView!
    @IBOutlet weak var shinchan4: UIImageView!
    @IBOutlet weak var shinchan5: UIImageView!
    @IBOutlet weak var shinchan6: UIImageView!
    @IBOutlet weak var shinchan7: UIImageView!
    @IBOutlet weak var shinchan8: UIImageView!
    @IBOutlet weak var shinchan9: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var score = 0
    var counter = 0
    var timer = Timer()
    var hideTimer = Timer()
    var shinchanArray = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //check the highscores
        let levelOneHighScore = UserDefaults.standard.object(forKey: "leveltwohighscore")
        
        if levelOneHighScore == nil {
            highScoreLabel.text = "0"
        }
        
        if let newScore = levelOneHighScore as? Int {
            highScoreLabel.text = String(newScore)
        }
        
        //printing var score in scoreLabel
        scoreLabel.text = "SCORE : \(score)"
        
        //creating gesture Recognizers
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(LevelOneVC.increaseScores))
        
        //add recognizers to images
        shinchan1.addGestureRecognizer(recognizer1)
        shinchan2.addGestureRecognizer(recognizer2)
        shinchan3.addGestureRecognizer(recognizer3)
        shinchan4.addGestureRecognizer(recognizer4)
        shinchan5.addGestureRecognizer(recognizer5)
        shinchan6.addGestureRecognizer(recognizer6)
        shinchan7.addGestureRecognizer(recognizer7)
        shinchan8.addGestureRecognizer(recognizer8)
        shinchan9.addGestureRecognizer(recognizer9)
        
        //putting shinchan images in shichanArray
        shinchanArray.append(shinchan1)
        shinchanArray.append(shinchan2)
        shinchanArray.append(shinchan3)
        shinchanArray.append(shinchan4)
        shinchanArray.append(shinchan5)
        shinchanArray.append(shinchan6)
        shinchanArray.append(shinchan7)
        shinchanArray.append(shinchan8)
        shinchanArray.append(shinchan9)
        
        
        //all images hidden before Start Button Clicked
        for shinchan in shinchanArray {
            shinchan.isHidden = true
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
            
            //hides all images when counter = 0
            for shinchan in shinchanArray{
                shinchan.isHidden = true
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
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelOneVC.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(LevelOneVC.hideShinchan), userInfo: nil, repeats: true)
                
            }
            
            alert.addAction(replay)
            
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    @objc func hideShinchan(){
        
        for shinchan in shinchanArray{
            shinchan.isHidden = true
        }
        
        
        //creating a random number betweeb 0-8 to unhide a random shichan image
        let randomNumber = Int(arc4random_uniform(UInt32(shinchanArray.count - 1)))
        
        //unhiding a random shinchan image
        shinchanArray[randomNumber].isHidden = false
    }
   
    @IBAction func levelOneStartButton(_ sender: Any) {
        
        //enabling images for userInteraction
        shinchan1.isUserInteractionEnabled = true
        shinchan2.isUserInteractionEnabled = true
        shinchan3.isUserInteractionEnabled = true
        shinchan4.isUserInteractionEnabled = true
        shinchan5.isUserInteractionEnabled = true
        shinchan6.isUserInteractionEnabled = true
        shinchan7.isUserInteractionEnabled = true
        shinchan8.isUserInteractionEnabled = true
        shinchan9.isUserInteractionEnabled = true
        
        //creating timers
        counter = 30
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelOneVC.countDown), userInfo: nil, repeats: true)
        
        //foe unhiding random shinchan images repeatedly after 0.5 seconds
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(LevelOneVC.hideShinchan), userInfo: nil, repeats: true)
    }
    
}
