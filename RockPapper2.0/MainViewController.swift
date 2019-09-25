//
//  ViewController.swift
//  RockPapper2.0
//
//  Created by Mohammed Khakidaljahdali on 25/09/2019.
//  Copyright © 2019 Mohammed. All rights reserved.
//

import UIKit

protocol isAbleToReceiveData {
  func pass(data: HistoryModel)
}


class MainViewController: UIViewController, isAbleToReceiveData {
    
    var historyList: [HistoryModel] = []
    
    func choiceGenerator() -> Int {
        return Int.random(in: 0...2)
    }
    func pass(data: HistoryModel) {
        historyList.append(data)
    }

    
    @IBAction func play(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(identifier: "ResultView") as! ResultViewController
        controller.playerChoice = sender.tag
        controller.opponentChoice = choiceGenerator()
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HistoryTableView" {
            let controller = segue.destination as! HistoryTableViewController
            controller.historyList = self.historyList
        }
    }
    


}

