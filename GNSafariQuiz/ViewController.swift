//
//  ViewController.swift
//  GNSafariQuiz
//
//  Created by joe on 6/11/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    let questions: [QuestionModel] = [
        QuestionModel(image: UIImage(resource: .lion), correctAnswer: 2, answer1: "Hippo", answer2: "Lion", answer3: "Antelope"),
        QuestionModel(image: UIImage(resource: .giraffe), correctAnswer: 1, answer1: "Giraffe", answer2: "Crocodile", answer3: "Elephant"),
        QuestionModel(image: UIImage(resource: .buffalo), correctAnswer: 3, answer1: "Hippo", answer2: "Lion", answer3: "Buffalo")
    ]
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentQuestion = questions[0]
        questionImageView.image = currentQuestion.image
        answer1Button.setTitle(currentQuestion.answer1, for: .normal)
        answer2Button.setTitle(currentQuestion.answer2, for: .normal)
        answer3Button.setTitle(currentQuestion.answer3, for: .normal)
    }

    @IBAction func answer1ButtonTapped(_ sender: Any) {
        let currentQuestion = questions[0]
        if currentQuestion.correctAnswer == 1 {
            print("Answer is correct!")
            score += 1
            scoreLabel.text = "Score \(score)"
        } else {
            print("Answer incorrect.")
        }
    }
    
    @IBAction func answer2ButtonTapped(_ sender: Any) {
        let currentQuestion = questions[0]
        if currentQuestion.correctAnswer == 2 {
            print("Answer is correct!")
            score += 1
            scoreLabel.text = "Score \(score)"
        } else {
            print("Answer incorrect.")
        }
    }
    
    @IBAction func answer3ButtonTapped(_ sender: Any) {
        let currentQuestion = questions[0]
        if currentQuestion.correctAnswer == 3 {
            print("Answer is correct!")
            score += 1
            scoreLabel.text = "Score \(score)"
        } else {
            print("Answer incorrect.")
        }
    }
}

