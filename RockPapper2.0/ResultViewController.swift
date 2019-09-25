//
//  ResultViewController.swift
//  RockPapper2.0
//
//  Created by Mohammed Khakidaljahdali on 25/09/2019.
//  Copyright © 2019 Mohammed. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerChoice: Int! = nil
    var opponentChoice: Int! = nil
    var delegate: isAbleToReceiveData!

    
    @IBOutlet weak var opponentChoiceImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func playAgain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func result() -> String {
        let outcome: String
        switch playerChoice {
        case 0:
            if 0 == opponentChoice {
                outcome = "It's a Tie"
            } else if 1 == opponentChoice {
                outcome = "You Lost"
            } else {
                outcome = "You Won"
            }
        case 1:
            if 1 == opponentChoice {
                outcome = "It's a Tie"
            } else if 2 == opponentChoice {
                outcome = "You Lost"
            } else {
                outcome = "You Won"
            }
        case 2:
            if 2 == opponentChoice {
                outcome = "It's a Tie"
            } else if 0 == opponentChoice {
                outcome = "You Lost"
            } else {
                outcome = "You Won"
            }
        default:
            outcome = "error"
        }
        return outcome
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        delegate.pass(data: HistoryModel.init(playerChoice: playerChoice, opponentChoice: opponentChoice, outcome: result()))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        opponentChoiceImage.image = UIImage.init(named: "C\(opponentChoice!)")
        opponentChoiceImage.contentMode = .scaleAspectFit
        resultLabel.text = result()
    }

}
