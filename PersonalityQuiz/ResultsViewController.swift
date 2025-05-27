//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Azalia Amanda on 27/05/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]) { (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
        //the same withouth using default subscript syntax
//        let frequencyOfAnswers2 = responses.reduce(into: [AnimalType : Int]()) { (counts, answer) in
//            if let existingCount = counts[answer.type] {
//                counts[answer.type] = existingCount + 1
//            } else {
//                counts[answer.type] = 1
//            }
//        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted { (pair1, pair2) in
            return pair1.value > pair2.value
        }
        
//        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        // or
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are \(mostCommonAnswer.rawValue)"
        resultDefinitionLabel.text = mostCommonAnswer.definition
            
    }
    


}
