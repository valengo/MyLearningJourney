//
//  CoreJourneyCollectionViewController.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 17/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class CoreJourneyViewController: UICollectionViewController {
    
    private let reuseIdentifier = "SubjectCell"
    private let subjects: [SubjectAreaRepr] = ModelManager.shared.getAllSubjectAreas()
    private let sectionInsets = UIEdgeInsets(top: 30.0,
                                             left: 20.0,
                                             bottom: 50.0,
                                             right: 20.0)
    private let itemsPerRow: CGFloat = 1
    private let heightMultiplier: CGFloat = 0.5

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Core Journey"
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ObjectivesViewController") as? ObjectivesViewController {
            vc.subjectArea = subjects[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subjects.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SubjectCell
        
        cell.contentView.layer.cornerRadius = 10.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        let subject = subjects[indexPath.row]
        cell.labelView.backgroundColor = Colors.getSubjectColor(subjectArea: subject.area)
        cell.subjectImage.image = Images.getSubjectImage(subjectArea: subject.area)
        cell.subjectLabel.text = subject.name
        return cell
    }
    
}

// MARK: - Collection View Flow Layout Delegate
extension CoreJourneyViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem * heightMultiplier)
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
