//
//  LevelThreeVC.swift
//  Shinchan Catch Me If You Can
//
//  Created by Parikshit Gothwal on 01/09/19.
//  Copyright © 2019 Urantia Tech. All rights reserved.
//

import UIKit

class LevelThreeVC: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    @IBOutlet weak var image10: UIImageView!
    @IBOutlet weak var image11: UIImageView!
    @IBOutlet weak var image12: UIImageView!
    @IBOutlet weak var image13: UIImageView!
    @IBOutlet weak var image14: UIImageView!
    @IBOutlet weak var image15: UIImageView!
    @IBOutlet weak var image16: UIImageView!
    @IBOutlet weak var image17: UIImageView!
    @IBOutlet weak var image18: UIImageView!
    @IBOutlet weak var image19: UIImageView!
    @IBOutlet weak var image20: UIImageView!
    @IBOutlet weak var image21: UIImageView!
    @IBOutlet weak var image22: UIImageView!
    @IBOutlet weak var image23: UIImageView!
    @IBOutlet weak var image24: UIImageView!
    @IBOutlet weak var image25: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var score = 0
    var counter = 0
    var timer = Timer()
    var imageArray = [UIImageView]()
    var hideTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //check the highscores
        let levelThreeHighScore = UserDefaults.standard.object(forKey: "levelthreehighscore")
        if levelThreeHighScore == nil {
            highScoreLabel.text = "0"
        }
        
        if let newScore = levelThreeHighScore as? Int {
            highScoreLabel.text = String(newScore)
        }
        
        
        //printing your score on scoreLabel
        scoreLabel.text = "SCORE : \(score)"
        
        //creating gesture recognizers for images
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer13 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer14 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer15 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer16 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer17 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer18 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer19 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer20 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer21 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer22 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer23 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer24 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))
        let recognizer25 = UITapGestureRecognizer(target: self, action: #selector(LevelThreeVC.increaseScore))

        //adding images to gesture recognizers
        image1.addGestureRecognizer(recognizer1)
        image2.addGestureRecognizer(recognizer2)
        image3.addGestureRecognizer(recognizer3)
        image4.addGestureRecognizer(recognizer4)
        image5.addGestureRecognizer(recognizer5)
        image6.addGestureRecognizer(recognizer6)
        image7.addGestureRecognizer(recognizer7)
        image8.addGestureRecognizer(recognizer8)
        image9.addGestureRecognizer(recognizer9)
        image10.addGestureRecognizer(recognizer10)
        image11.addGestureRecognizer(recognizer11)
        image12.addGestureRecognizer(recognizer12)
        image13.addGestureRecognizer(recognizer13)
        image14.addGestureRecognizer(recognizer14)
        image15.addGestureRecognizer(recognizer15)
        image16.addGestureRecognizer(recognizer16)
        image17.addGestureRecognizer(recognizer17)
        image18.addGestureRecognizer(recognizer18)
        image19.addGestureRecognizer(recognizer19)
        image20.addGestureRecognizer(recognizer20)
        image21.addGestureRecognizer(recognizer21)
        image22.addGestureRecognizer(recognizer22)
        image23.addGestureRecognizer(recognizer23)
        image24.addGestureRecognizer(recognizer24)
        image25.addGestureRecognizer(recognizer25)
        
        //adding images to imageArray
        imageArray.append(image1)
        imageArray.append(image2)
        imageArray.append(image3)
        imageArray.append(image4)
        imageArray.append(image5)
        imageArray.append(image6)
        imageArray.append(image7)
        imageArray.append(image8)
        imageArray.append(image9)
        imageArray.append(image10)
        imageArray.append(image11)
        imageArray.append(image12)
        imageArray.append(image14)
        imageArray.append(image15)
        imageArray.append(image16)
        imageArray.append(image17)
        imageArray.append(image18)
        imageArray.append(image19)
        imageArray.append(image20)
        imageArray.append(image21)
        imageArray.append(image22)
        imageArray.append(image23)
        imageArray.append(image24)
        imageArray.append(image25)
        imageArray.append(image13)
        
        //all images hidden before Start Button Clicked
        for image in imageArray {
            image.isHidden = true
        }
    }
    
    //increases score by one when clicked on image
    @objc func increaseScore(){
        score = score + 1
        scoreLabel.text = "SCORE: \(score)"
    }
    
    //decreases timer by one
    @objc func countDown() {
        counter = counter - 1
        timeLabel.text = "\(counter)"
        
        
        if counter == 0 {
            timer.invalidate()     // stops timer when 0
            hideTimer.invalidate()  // stops hideTimer when 0
            
            //hides all images when counter = 0
            for image in imageArray{
                image.isHidden = true
            }
            
            
            //checking highscores
            if self.score > Int(highScoreLabel.text!)! {
                UserDefaults.standard.set(self.score, forKey: "levelthreehighscore")
                highScoreLabel.text = String(self.score)
            }
    
            //alert creation
            let alert = UIAlertController(title: "Time", message: "Your Time is Up!", preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                self.score = 0
                self.scoreLabel.text = "SCORE : \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
 
            }
            alert.addAction(ok)
            
            //replay the level
            let replay = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                //this happens when clicked on Replay
                self.score = 0
                self.scoreLabel.text = "SCORE : \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
                
                //run timer again
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LevelThreeVC.countDown), userInfo: self, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(LevelThreeVC.hideImage), userInfo: nil, repeats: true)
                
            }
            alert.addAction(replay)
            self.present(alert, animated: true, completion: nil )
            
        }
    }
    
    @objc func hideImage(){
        for image in imageArray {
            image.isHidden = true
        }
        
        let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        imageArray[randomNumber].isHidden = false
    }
    
    @IBAction func startButtonLevel3(_ sender: Any) {
        
        image1.isUserInteractionEnabled = true
        image2.isUserInteractionEnabled = true
        image3.isUserInteractionEnabled = true
        image4.isUserInteractionEnabled = true
        image5.isUserInteractionEnabled = true
        image6.isUserInteractionEnabled = true
        image7.isUserInteractionEnabled = true
        image8.isUserInteractionEnabled = true
        image9.isUserInteractionEnabled = true
        image10.isUserInteractionEnabled = true
        image11.isUserInteractionEnabled = true
        image12.isUserInteractionEnabled = true
        image13.isUserInteractionEnabled = true
        image14.isUserInteractionEnabled = true
        image15.isUserInteractionEnabled = true
        image16.isUserInteractionEnabled = true
        image17.isUserInteractionEnabled = true
        image18.isUserInteractionEnabled = true
        image19.isUserInteractionEnabled = true
        image20.isUserInteractionEnabled = true
        image21.isUserInteractionEnabled = true
        image22.isUserInteractionEnabled = true
        image23.isUserInteractionEnabled = true
        image24.isUserInteractionEnabled = true
        image25.isUserInteractionEnabled = true
        
        counter = 30
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(LevelThreeVC.hideImage), userInfo: nil, repeats: true)
        
        
    }
    
    

}
