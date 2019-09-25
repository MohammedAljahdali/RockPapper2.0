//
//  HistoryTableViewController.swift
//  RockPapper2.0
//
//  Created by Mohammed Khakidaljahdali on 25/09/2019.
//  Copyright © 2019 Mohammed. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {
    
    var historyList: [HistoryModel] = []
    
    func intToString(choice: Int) -> String {
        switch choice {
        case 0:
            return "Rock"
        case 1:
            return "Papper"
        case 2:
            return "Scissors"
        default:
            return "error"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell")!
        let outcomeValue = historyList[indexPath.row].outcome
        let opponentChoiceString = intToString(choice: historyList[indexPath.row].opponentChoice)
        let playerChoiceImage = UIImage.init(named: "\(historyList[indexPath.row].playerChoice)")
        cell.textLabel?.text = outcomeValue
        cell.detailTextLabel?.text = "Your Opponent Choice was: \(opponentChoiceString)"
        cell.imageView?.image = playerChoiceImage
        return cell
    }


}
