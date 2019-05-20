//
//  Model.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 17/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation

class ModelManager {
    
    static let shared = ModelManager()
    
    private var learningGoals: [LearningGoal] = []
    private var learningObjectives: [LearningObjective] = []
    
    private var designGoal = LearningGoal(id: 1,
                                          topic: "Visual Design and Communication",
                                          description: "Understand and apply the fundamental elements of Visual and Communication design.",
                                          label: "Visual Design", subjectArea: SubjectArea.design, code: "TD01")
    private var growthGoal = LearningGoal(id: 2,
                                          topic: "Professional Empowerment & CV",
                                          description: "Empower and improve abilities in order to be prepared for professional future.",
                                          label: "Pro Empowerment", subjectArea: SubjectArea.professionalGrowth, code: "TP01")
    private var codingGoal = LearningGoal(id: 3,
                                          topic: "Computational Thinking",
                                          description: "Develop Computational Thinking",
                                          label: "Computational Thinking", subjectArea: SubjectArea.coding, code: "TC02")
    private var skillsGoal = LearningGoal(id: 4,
                                          topic: "Collaboration",
                                          description: "Work effectively and respectfully with diverse individuals and teams.",
                                          label: "Collaboration", subjectArea: SubjectArea.successSkills, code: "TS01")
    private var processGoal = LearningGoal(id: 5,
                                           topic: "Engage",
                                           description: "Learn how identify ideas and translate them into action challenges.",
                                           label: "Engage", subjectArea: SubjectArea.process, code: "TM01")
    private var itGoal = LearningGoal(id: 6,
                                      topic: "Cryptography: symmetric and asymmetric encryption",
                                      description: "Use actively symmetric and asymmetric encryption, including digital signature concepts.",
                                      label: "Cryptography", subjectArea: SubjectArea.it, code: "TI04")
    
    private func getObjectivesByArea() -> Dictionary<SubjectArea, [LearningObjective]> {
        return [
            SubjectArea.design: [
                LearningObjective(id: 1, code: "DE06",
                                  description: "Apply principles of Motion and Animation Design",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the role of Motion and Animation in UI Design. Recognise different types and contexts of animations",
                                    "Use standard/native animation in UI design applying principle of motion to convey meaning in interactions",
                                    "Design animation for different purposes (for example: UI transitions; in Onboarding animated screens)",
                                    "Provide Guidance for the Design of consistent custom animation systems for UI interactions and animated screens"],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice)
            ],
            
            SubjectArea.professionalGrowth: [
                LearningObjective(id: 1, code: "PG05",
                                  description: "Promote and match effectively professional opportunities to the Alumnae network",
                                  learningGoal: growthGoal,
                                  levelDescriptions: [
                                    "Recognise the importance of being part of the Alumnae Academy network",
                                    "Actively be part of the Alumnae network",
                                    "Promote and match effectively professional opportunities to the Alumnae network",
                                    "Provide guidance in order to implement the database of professional contacts"
                    ], targetLevel: KnowledgeLevel.expert, currentLevel: nil, mandatoryLevel: nil)
                ],
            
            SubjectArea.coding: [],
            
            SubjectArea.successSkills: [],
            
            SubjectArea.process: [],
            
            SubjectArea.it: []
        ]
    }
    
    
    
    private init() {
    }
    
    func getAllSubjectAreas() -> [SubjectAreaRepr] {
        return [
            SubjectAreaRepr(id: 1, name: SubjectArea.design.rawValue, area: SubjectArea.design),
            SubjectAreaRepr(id: 2, name: SubjectArea.professionalGrowth.rawValue, area: SubjectArea.professionalGrowth),
            SubjectAreaRepr(id: 3, name: SubjectArea.coding.rawValue, area: SubjectArea.coding),
            SubjectAreaRepr(id: 4, name: SubjectArea.successSkills.rawValue, area: SubjectArea.successSkills),
            SubjectAreaRepr(id: 5, name: SubjectArea.process.rawValue, area: SubjectArea.process),
            SubjectAreaRepr(id: 6, name: SubjectArea.it.rawValue, area: SubjectArea.it)
        ]
    }
    
    func getLearningObjectives(subjectArea: SubjectArea) -> [LearningObjective] {
        switch subjectArea {
        case .design:
            return getObjectivesByArea()[.design]!
        default:
            return []
        }
    }
}
