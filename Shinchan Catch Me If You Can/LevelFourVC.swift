//
//  LevelFourVC.swift
//  Shinchan Catch Me If You Can
//
//  Created by Parikshit Gothwal on 02/09/19.
//  Copyright © 2019 Urantia Tech. All rights reserved.
//

import UIKit

class LevelFourVC: UIViewController {

    @IBOutlet weak var shinchan1: UIImageView!
    @IBOutlet weak var shinchan2: UIImageView!
    @IBOutlet weak var shinchan3: UIImageView!
    @IBOutlet weak var shinchan4: UIImageView!
    @IBOutlet weak var shinchan5: UIImageView!
    @IBOutlet weak var shinchan6: UIImageView!
    @IBOutlet weak var shinchan7: UIImageView!
    @IBOutlet weak var shinchan8: UIImageView!
    @IBOutlet weak var shinchan9: UIImageView!
    @IBOutlet weak var shinchan10: UIImageView!
    @IBOutlet weak var shinchan11: UIImageView!
    @IBOutlet weak var shinchan12: UIImageView!
    
    @IBOutlet weak var shinchanMid: UIImageView!
    
    @IBOutlet weak var shiro1: UIImageView!
    @IBOutlet weak var shiro2: UIImageView!
    @IBOutlet weak var shiro3: UIImageView!
    @IBOutlet weak var shiro4: UIImageView!
    @IBOutlet weak var shiro5: UIImageView!
    @IBOutlet weak var shiro6: UIImageView!
    
    @IBOutlet weak var himawari1: UIImageView!
    @IBOutlet weak var himawari2: UIImageView!
    @IBOutlet weak var himawari3: UIImageView!
    @IBOutlet weak var himawari4: UIImageView!
    @IBOutlet weak var himawari5: UIImageView!
    @IBOutlet weak var himawari6: UIImageView!
    
    @IBOutlet weak var harry1: UIImageView!
    @IBOutlet weak var harry2: UIImageView!
    
    @IBOutlet weak var mitsi1: UIImageView!
    @IBOutlet weak var mitsi2: UIImageView!
    
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0
    var counter = 0
    var timer = Timer()
    var imageArray = [UIImageView]()
    var hideTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //printing score in score label
        scoreLabel.text = "SCORE : \(score)"
        
        //creating gesture Recognizers for shinchan image
        let shinchanRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer10 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer11 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        let shinchanRecognizer12 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchan))
        
        //creating gesture Recognizer for himawari image
        let himawariRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreHimawari))
        let himawariRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreHimawari))
        let himawariRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreHimawari))
        let himawariRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreHimawari))
        let himawariRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreHimawari))
        let himawariRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreHimawari))
        
        //creating gesture recognizer for shiro
        let shiroRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShiro))
        let shiroRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShiro))
        let shiroRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShiro))
        let shiroRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShiro))
        let shiroRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShiro))
        let shiroRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShiro))
        
        
        //creating gesture Recognizer for Harry image
        let harryRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.decreaseScoreHarry))
        let harryRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.decreaseScoreHarry))
        
        //creating gesture Recognizer for Mitsi image
        let mitsiRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.decreaseScoreMitsi))
        let mitsiRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.decreaseScoreMitsi))
        
        //creating gesture recognizer to shinchan mid image
        let shinchanMidRecognizer = UITapGestureRecognizer(target: self, action: #selector(LevelFourVC.increaseScoreShinchanTwo))
        
        //adding gesture recognizer to shinchan image
        shinchan1.addGestureRecognizer(shinchanRecognizer1)
        shinchan2.addGestureRecognizer(shinchanRecognizer2)
        shinchan3.addGestureRecognizer(shinchanRecognizer3)
        shinchan4.addGestureRecognizer(shinchanRecognizer4)
        shinchan5.addGestureRecognizer(shinchanRecognizer5)
        shinchan6.addGestureRecognizer(shinchanRecognizer6)
        shinchan7.addGestureRecognizer(shinchanRecognizer7)
        shinchan8.addGestureRecognizer(shinchanRecognizer8)
        shinchan9.addGestureRecognizer(shinchanRecognizer9)
        shinchan10.addGestureRecognizer(shinchanRecognizer10)
        shinchan11.addGestureRecognizer(shinchanRecognizer11)
        shinchan12.addGestureRecognizer(shinchanRecognizer12)
        
        //adding gesture recognizer to himawari image
        himawari1.addGestureRecognizer(himawariRecognizer1)
        himawari2.addGestureRecognizer(himawariRecognizer2)
        himawari3.addGestureRecognizer(himawariRecognizer3)
        himawari4.addGestureRecognizer(himawariRecognizer4)
        himawari5.addGestureRecognizer(himawariRecognizer5)
        himawari6.addGestureRecognizer(himawariRecognizer6)
        
        //adding gesture reognizer to shiro image
        shiro1.addGestureRecognizer(shiroRecognizer1)
        shiro2.addGestureRecognizer(shiroRecognizer2)
        shiro3.addGestureRecognizer(shiroRecognizer3)
        shiro4.addGestureRecognizer(shiroRecognizer4)
        shiro5.addGestureRecognizer(shiroRecognizer5)
        shiro6.addGestureRecognizer(shiroRecognizer6)
        
        //adding gesture recognizer to Harry image
        harry1.addGestureRecognizer(harryRecognizer1)
        harry2.addGestureRecognizer(harryRecognizer2)
        
        //adding gesture recognizer to Harry image
        mitsi1.addGestureRecognizer(mitsiRecognizer1)
        mitsi2.addGestureRecognizer(mitsiRecognizer2)
        
        //adding gesture recognizer to SHinchan mid image
        shinchanMid.addGestureRecognizer(shinchanMidRecognizer)
        
        
        //adding images to image array
        imageArray.append(shinchan1)
        imageArray.append(shinchan2)
        imageArray.append(shinchan3)
        imageArray.append(shinchan4)
        imageArray.append(shinchan5)
        imageArray.append(shinchan6)
        imageArray.append(shinchan7)
        imageArray.append(shinchan8)
        imageArray.append(shinchan9)
        imageArray.append(shinchan10)
        imageArray.append(shinchan11)
        imageArray.append(shinchan12)
        imageArray.append(himawari1)
        imageArray.append(himawari2)
        imageArray.append(himawari3)
        imageArray.append(himawari4)
        imageArray.append(himawari5)
        imageArray.append(himawari6)
        imageArray.append(shiro1)
        imageArray.append(shiro2)
        imageArray.append(shiro3)
        imageArray.append(shiro4)
        imageArray.append(shiro5)
        imageArray.append(shiro6)
        imageArray.append(harry1)
        imageArray.append(harry2)
        imageArray.append(mitsi1)
        imageArray.append(mitsi2)
        imageArray.append(shinchanMid)
        
        //hide all images
        for image in imageArray{
            image.isHidden = true
        }
        
    }
    
    @objc func increaseScoreShinchan(){
        score = score + 1
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func increaseScoreHimawari(){
        score = score + 2
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func increaseScoreShiro(){
        score = score + 3
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func decreaseScoreMitsi(){
        score = score - 5
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func decreaseScoreHarry(){
        score = score - 1
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func increaseScoreShinchanTwo(){
        score = score + 5
        scoreLabel.text = "SCORE : \(score)"
    }
    
    @objc func countDown() {
        counter = counter - 1
        timeLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            
            
            
            //creating alert
            let alert = UIAlertController(title: "Time", message: "Your Time is Up!", preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                self.score = 0
                self.scoreLabel.text = "SCORE : \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
            }
            alert.addAction(ok)
            
            //replay the level
            let replay = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                self.score = 0
                self.scoreLabel.text = "SCORE : \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelFourVC.countDown), userInfo: nil, repeats: true)
                
            }
            alert.addAction(replay)
            self.present(alert, animated: true, completion: nil)

            
        }
    }
    
    
    func hideImage() {
        for image in imageArray {
            image.isHidden = true
        }
    }
    
    @IBAction func levelFourStartButton(_ sender: Any) {
        
        //making shinchan images user interaction enabled
        shinchan1.isUserInteractionEnabled = true
        shinchan2.isUserInteractionEnabled = true
        shinchan3.isUserInteractionEnabled = true
        shinchan4.isUserInteractionEnabled = true
        shinchan5.isUserInteractionEnabled = true
        shinchan6.isUserInteractionEnabled = true
        shinchan7.isUserInteractionEnabled = true
        shinchan8.isUserInteractionEnabled = true
        shinchan9.isUserInteractionEnabled = true
        shinchan10.isUserInteractionEnabled = true
        shinchan11.isUserInteractionEnabled = true
        shinchan12.isUserInteractionEnabled = true
        
        //making himawari images user interaction enabled
        himawari1.isUserInteractionEnabled = true
        himawari2.isUserInteractionEnabled = true
        himawari3.isUserInteractionEnabled = true
        himawari4.isUserInteractionEnabled = true
        himawari5.isUserInteractionEnabled = true
        himawari6.isUserInteractionEnabled = true
        
        //making shiro images user interaction enabled
        shiro1.isUserInteractionEnabled = true
        shiro2.isUserInteractionEnabled = true
        shiro3.isUserInteractionEnabled = true
        shiro4.isUserInteractionEnabled = true
        shiro5.isUserInteractionEnabled = true
        shiro6.isUserInteractionEnabled = true
        
        //making Harry images user interaction enabled
        harry1.isUserInteractionEnabled = true
        harry2.isUserInteractionEnabled = true
        
        //making Mitsi images user interaction enabled
        mitsi1.isUserInteractionEnabled = true
        mitsi2.isUserInteractionEnabled = true
        
        //making shinchanmid image user interaction enabled
        shinchanMid.isUserInteractionEnabled = true
        
        
        counter = 30
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelFourVC.countDown), userInfo: nil, repeats: true)
    }
}
