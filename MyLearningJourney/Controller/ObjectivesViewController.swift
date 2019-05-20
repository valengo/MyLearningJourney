//
//  ObjectivesByAreaTableViewController.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 19/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import UIKit

class ObjectivesViewController: UITableViewController {

    var subjectArea: SubjectAreaRepr!
    private let reuseIdentifier = "LearningObjectiveCell"
    private var learningObjectives: [LearningObjective]!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = subjectArea.name
        
        learningObjectives = ModelManager.shared.getLearningObjectives(subjectArea: subjectArea.area)
        
        self.tableView.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return learningObjectives.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! LearningObjectiveCell
        
        cell.rootView.layer.cornerRadius = 10.0
        cell.rootView.layer.masksToBounds = true

        let color = Colors.getSubjectColor(subjectArea: subjectArea.area)
        cell.rootView.backgroundColor = color.withAlphaComponent(1.0)

        let objective = learningObjectives[indexPath.row]
        cell.nameLabel.text = objective.description
        cell.codeLabel.text = objective.code
        cell.topicLabel.text = objective.learningGoal.topic

        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "FullObjectiveViewController") as? FullObjectiveViewController {
            vc.currentLearningObjective = learningObjectives[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
