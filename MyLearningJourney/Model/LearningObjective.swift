//
//  LearningObjective.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 17/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

struct LearningObjective {
    let id: Int
    let code: String
    let description: String
    let learningGoal: LearningGoal
    let levelDescriptions: [String]
    let targetLevel: KnowledgeLevel
    let currentLevel: KnowledgeLevel?
    let mandatoryLevel: KnowledgeLevel?
}
