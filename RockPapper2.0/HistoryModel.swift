//
//  HistoryModel.swift
//  RockPapper2.0
//
//  Created by Mohammed Khakidaljahdali on 25/09/2019.
//  Copyright © 2019 Mohammed. All rights reserved.
//

import Foundation

class HistoryModel {
    let playerChoice: Int
    let opponentChoice: Int
    let outcome: String
    
    init(playerChoice: Int, opponentChoice: Int, outcome: String) {
        self.playerChoice = playerChoice
        self.opponentChoice = opponentChoice
        self.outcome = outcome
    }
}
