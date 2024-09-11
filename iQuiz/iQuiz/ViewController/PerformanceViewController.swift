//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Thiago Goulart on 01/09/24.
//

import UIKit

class PerformanceViewController: UIViewController {
    
    var score: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var performaceLabel: UILabel!
    @IBOutlet weak var restartQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
        performanceConfig()
    }
    
    func layoutConfig() {
        navigationItem.hidesBackButton = true
        restartQuizButton.layer.cornerRadius = 16.0
    }
    
    func performanceConfig() {
        guard let score = score else { return }
        resultLabel.text = "Você acertou \(score) de \(questions.count) questões"
        let performance = (score * 100 / questions.count)
        performaceLabel.text = "Percentual final: \(performance)%"
    }
    
}
