//
//  ViewController.swift
//  Landmarks Quiz
//
//  Created by Muhamed Alkhatib on 18/08/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var quiz = Quiz()

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var landMarkimageView: UIImageView!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var correctImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupQuestion()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if quiz.checkAnswer(answer: sender.currentTitle!){
            correctImageView.image = UIImage(named: "true")
        }else{
            correctImageView.image = UIImage(named: "false")
        }
        quiz.goToNextQuestion()
        setupQuestion()
    }
    
    func setupQuestion(){
        let cQuestion = quiz.currentQuestion
        let choices = quiz.choises[cQuestion].shuffled() // make them in random arrangement
        let score = quiz.score
        answer1.setTitle(choices[0], for: .normal)
        answer2.setTitle(choices[1], for: .normal)
        answer3.setTitle(choices[2], for: .normal)
        answer4.setTitle(choices[3], for: .normal)
        landMarkimageView.image = quiz.images[cQuestion]
        scoreLabel.text = "Score: \(score)/\(quiz.images.count)"
    }
    
    

}

