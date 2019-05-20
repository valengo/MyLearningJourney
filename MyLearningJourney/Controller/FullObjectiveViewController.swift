//
//  FullObjectiveViewController.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 19/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class FullObjectiveViewController: UICollectionViewController {
    
    private let reuseIdentifier = "FullObjectiveCell"
    
    var currentLearningObjective: LearningObjective!
    
    private let sectionInsets = UIEdgeInsets(top: 100,
                                             left: 0,
                                             bottom: 30.0,
                                             right: 0)
    
    private let itemsPerRow: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title =  currentLearningObjective.code
        self.collectionView.contentInset = sectionInsets

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FullLearningObjectiveCell
        let color = Colors.getSubjectColor(subjectArea: currentLearningObjective.learningGoal.subjectArea)
        cell.knowledgeLevelSegmented.tintColor = color.withAlphaComponent(1)
        cell.learningObjective = currentLearningObjective
        cell.descriptionLabel.text = currentLearningObjective.description
        cell.knowledgeDescLabel.text = currentLearningObjective.levelDescriptions.first
        return cell
    }
}

// MARK: - Collection View Flow Layout Delegate
extension FullObjectiveViewController : UICollectionViewDelegateFlowLayout {
    // TODO: fix size

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
