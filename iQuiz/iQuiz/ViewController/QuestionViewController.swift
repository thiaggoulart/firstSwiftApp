//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Thiago Goulart on 01/09/24.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var score = 0
    var questionNumber = 0
    
    @IBOutlet var answersButtons: [UIButton]!
    @IBOutlet weak var questionTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfiguration()
        questionConfiguration()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        performanceVC.score = score
    }
    
    @IBAction func pressAnswerButton(_ sender: UIButton) {
        let userRightAnswer = questions[questionNumber].rightAnswer == sender.tag
        
        if userRightAnswer {
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            score += 1
        }else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(questionConfiguration), userInfo: nil, repeats: false)
        } else {
            navigateToPerformanceScreen()
        }
    }
    
    func navigateToPerformanceScreen() {
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
    }
    
    func layoutConfiguration() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        for button in answersButtons {
            button.layer.cornerRadius = 16.0
        }
    }
    
    @objc func questionConfiguration() {
        questionTitleLabel.text = questions[questionNumber].title
        for button in answersButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
}
