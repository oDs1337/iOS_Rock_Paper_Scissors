//
//  Operations.swift
//  iOS_Rock_Paper_Scissors
//
//  Created by Tobiasz Mamcarczyk on 25/05/2020.
//  Copyright © 2020 Tobiasz Mamcarczyk. All rights reserved.
//

import Foundation

class Operations
{
    var computerAnswer:Int!
    
    /*
       RESULT LEGEND:
       0 - tie
       1 - player win
       2 - computer win
    */
    
    //  rock
    func rock(computerAnswer:Int) -> Int
    {
        //  rock = 1
        var result:Int = 0
        
        if(computerAnswer == 2)
        {
            result = 2
        }
        else if(computerAnswer == 3)
        {
            result  = 1
        }
        else if(computerAnswer == 1)
        {
            result = 0
        }
        return result
    }
    //  paper
    func paper(computerAnswer:Int) -> Int
    {
        //  paper = 2
        var result:Int = 0
        
        if(computerAnswer == 2)
        {
            result = 0
        }
        else if(computerAnswer == 3)
        {
            result = 2
        }
        else if(computerAnswer == 1)
        {
            result = 1
        }
        
        return result
    }
    
    //  scissors
    func scissors(computerAnswer:Int) -> Int
    {
        //  scissors = 3
        var result:Int = 0
        
        if(computerAnswer == 2)
        {
            result = 1
        }
        else if(computerAnswer == 3)
        {
            result = 0
        }
        else if(computerAnswer == 1)
        {
            result = 2
        }
        
        return result
    }
}
