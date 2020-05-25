//
//  ViewController.swift
//  iOS_Rock_Paper_Scissors
//
//  Created by Tobiasz Mamcarczyk on 25/05/2020.
//  Copyright © 2020 Tobiasz Mamcarczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //  game result
    @IBOutlet weak var playerAnswer: UIImageView!
    
    @IBOutlet weak var cpuAnswer: UIImageView!
    
    @IBOutlet weak var gameOverLaber: UILabel!
    
    //  important variables
    var userAnswer:Int = 0
    var computerAnswer:Int = 0
    /*
        RESULT LEGEND:
        0 - tie
        1 - player win
        2 - computer win
     */
    var result:Int = 0
    var myOperations = Operations()
    
    func defaultSetting()
    {
        //  default answer's results
        playerAnswer.image = UIImage(named: "")
        cpuAnswer.image = UIImage(named: "")
        
        //  default game score
        gameOverLaber.text = ""
        
        //  default variables
        userAnswer = 0
        computerAnswer = 0
        result = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        defaultSetting()
    }
    
    //  result
    
    /*  LEGEND:
        1 = rock
        2 = paper
        3 = scissors
     
     */
    
    func gameOverScore(userAnswer:Int,computerAnswer:Int)
    {
        //  player answer image change
        playerAnswer.image = UIImage(named: "\(userAnswer)")
        
        //  user answer image change
        cpuAnswer.image = UIImage(named: "\(computerAnswer)")
        
        //  final result label
        if(result == 0)
        {
            gameOverLaber.text = "TIE"
        }
        else if(result == 1)
        {
            gameOverLaber.text = "PLAYER WIN"
        }
        else if(result == 2)
        {
            gameOverLaber.text = "COMPUTER WIN"
        }
    }
    
    //  rock
    @IBAction func rockTap(_ sender: Any) {
        
        //  set variables
        userAnswer = 1
        computerAnswer = Int.random(in: 1..<4)
        
        result = myOperations.rock(computerAnswer: computerAnswer)
        
        gameOverScore(userAnswer: userAnswer, computerAnswer: computerAnswer)
        
    }
    
    //  paper
    @IBAction func paperTap(_ sender: Any) {
        
        //  set variables
        userAnswer = 2
        computerAnswer = Int.random(in: 1..<4)
        
        result = myOperations.paper(computerAnswer: computerAnswer)
        
        gameOverScore(userAnswer: userAnswer, computerAnswer: computerAnswer)
        
    }
    
    //  scissors
    @IBAction func scissorsTap(_ sender: Any) {
        
        //  set variables
        userAnswer = 3
        computerAnswer = Int.random(in: 1..<4)
        
        result = myOperations.scissors(computerAnswer: computerAnswer)
        
        gameOverScore(userAnswer: userAnswer, computerAnswer: computerAnswer)
        
    }
    
    

}

