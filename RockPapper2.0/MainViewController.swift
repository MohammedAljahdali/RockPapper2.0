//
//  ViewController.swift
//  RockPapper2.0
//
//  Created by Mohammed Khakidaljahdali on 25/09/2019.
//  Copyright © 2019 Mohammed. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var historyModel = [["choice":"rock", "result":"tie"]]
    
    func choiceGenerator() -> Int {
        return Int.random(in: 0...2)
    }

    @IBAction func play(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(identifier: "ResultView") as! ResultViewController
        controller.playerChoice = sender.tag
        controller.opponentChoice = choiceGenerator()
        present(controller, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}

