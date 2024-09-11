//
//  ViewController.swift
//  iQuiz
//
//  Created by Thiago Goulart on 01/09/24.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfiguration()
    }
    
    func layoutConfiguration() {
        navigationItem.hidesBackButton = true
        startQuizButton.layer.cornerRadius = 16.0
    }

    @IBAction func pressButton(_ sender: Any) {
        print("O botão foi pressionado!")
    }
    
    @IBOutlet weak var startQuizButton: UIButton!
}
