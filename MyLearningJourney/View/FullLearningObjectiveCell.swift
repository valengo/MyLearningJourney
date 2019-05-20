//
//  FullLearningObjectiveCell.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 20/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class FullLearningObjectiveCell: UICollectionViewCell {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var knowledgeDescLabel: UILabel!
    var learningObjective: LearningObjective!
    
    @IBOutlet var addedSwitch: UISwitch!
    
    @IBOutlet var knowledgeLevelSegmented: UISegmentedControl!
        
    @IBAction func addedSwitched(_ sender: Any) {
    }
    
    @IBAction func segmentedChanged(_ sender: Any) {
        knowledgeDescLabel.text = learningObjective.levelDescriptions[knowledgeLevelSegmented.selectedSegmentIndex]
        
    }
}
