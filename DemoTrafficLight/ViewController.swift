//
//  ViewController.swift
//  DemoTrafficLight
//
//  Created by Apple on 11/8/19.
//  Copyright © 2019 vietlink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var lblYellow: UILabel!
    
    var timerRed:Int = 61
    var timerGreen:Int = 52
    var timerYellow:Int = 4
    
    var timerRedd:Timer = Timer()
    var timerYelloww:Timer = Timer()
    var timerGreenn:Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    @IBAction func touchBtnStart(_ sender: Any) {
        
        timerRedd = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(updateRedTimer), userInfo: nil, repeats:true)
        
    }
    
    @objc func updateRedTimer() {
        
       
        
        timerRed -= 1
        
        if timerRed == 1 {
            
            timerGreenn = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(updateGreenTimer), userInfo: nil, repeats:true)
            
            timerRedd.invalidate()
        }
        
         lblRed.text = String(timerRed)
         lblRed.isHidden = false
         lblGreen.isHidden = true
         lblYellow.isHidden = true
    }
    
    @objc func updateYellowTimer() {
        
        timerYellow -= 1
        lblYellow.text = String(timerYellow)
        
        if timerYellow == 1 {
            
            timerRed = 61
            timerGreen = 53
            timerYellow = 4
            
            timerRedd = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(updateRedTimer), userInfo: nil, repeats:true)
            
            timerYelloww.invalidate()
        }
        
        
        lblYellow.isHidden = false
        lblRed.isHidden = true
        lblGreen.isHidden = true
    }
    
    @objc func updateGreenTimer() {
        
        timerGreen -= 1
        
        if timerGreen == 1  {
            
            timerYelloww = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(updateYellowTimer), userInfo: nil, repeats:true)
            timerGreenn.invalidate()
            
        }
        
         lblGreen.text = String(timerGreen)
         lblGreen.isHidden = false
         lblRed.isHidden = true
         lblYellow.isHidden = true
    }

    
}

