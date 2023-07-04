//
//  Quiz.swift
//  Landmarks Quiz
//
//  Created by Mohamed Elkomey on 03/07/2023.
//

//model contains bussiness intelligence
import Foundation
import UIKit

struct Quiz{
    
    let images=[#imageLiteral(resourceName: "Indonesia 1"),#imageLiteral(resourceName: "Japan 1"),#imageLiteral(resourceName: "China1"),#imageLiteral(resourceName: "India 2"),#imageLiteral(resourceName: "Egypt 2"),#imageLiteral(resourceName: "France 1"),#imageLiteral(resourceName: "USA 2"),#imageLiteral(resourceName: "UAE 1"),#imageLiteral(resourceName: "India 1"),#imageLiteral(resourceName: "UK 1"),#imageLiteral(resourceName: "UAE 3"),#imageLiteral(resourceName: "USA 1"),#imageLiteral(resourceName: "Saudi 1"),#imageLiteral(resourceName: "UAE 2"),#imageLiteral(resourceName: "Egypt 1"),#imageLiteral(resourceName: "Jordan 1")]
    let choises = [["Indonesia","Japan","China","Korea"],
                     ["Japan","USA","France","Jordan"],
                     ["China","Japan","Indonesia","Korea"],
                     ["India","Pakistan","USA","China"],
                     ["Egypt","Jordan","Syria","Sudan"],
                     ["France","UK","Italy","Brazil"],
                     ["USA","UK","France","Italy"],
                     ["UAE","Saudi Arabia","Kuwait","Bahrain"],
                     ["India","Pakistan","Iran","Turkey"],
                     ["UK","USA","Brazil","Korea"],
                     ["UAE","Bahrain","Kuwait","USA"],
                     ["USA","France","Italy","China"],
                     ["Saudi Arabia","UAE","Bahrain","Oman"],
                     ["UAE","Oman","Bahrain","Jordan"],
                     ["Egypt","Morocco","Tunis","Sudan"],
                     ["Jordan","Egypt","Morocco","Tunis"]]
    var currentQuestion = 0
    var score = 0
    var gameIsActive = true
    
    mutating func checkAnswer(answer:String)->Bool{
        if gameIsActive {
        if answer == choises[currentQuestion][0]{
            score += 1
            return true
        }else{
            return false
        }
    }
        return false
    }
    
    mutating func goToNextQuestion(){
        if currentQuestion >= images.count-1{
            print("Game over")
            gameIsActive = false
        }else{
            currentQuestion += 1
        }
    }
}
