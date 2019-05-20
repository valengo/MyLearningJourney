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
                                          topic: "Visual design and communication",
                                          description: "Understand and apply the fundamental elements of Visual and Communication design.",
                                          label: "Visual Design", subjectArea: SubjectArea.design, code: "TD01")
    private var growthGoal = LearningGoal(id: 2,
                                          topic: "Professional empowerment & CV",
                                          description: "Empower and improve abilities in order to be prepared for professional future.",
                                          label: "Pro Empowerment", subjectArea: SubjectArea.professionalGrowth, code: "TP01")
    private var codingGoal = LearningGoal(id: 3,
                                          topic: "Computational thinking",
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
                                  description: "Apply principles of motion and animation design",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the role of motion and animation in UI Design. Recognise different types and contexts of animations.",
                                    "Use standard/native animation in UI design applying principle of motion to convey meaning in interactions.",
                                    "Design animation for different purposes (for example: UI transitions; in onboarding animated screens).",
                                    "Provide guidance for the design of consistent custom animation systems for UI interactions and animated screens."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE19",
                                  description: "Create interactive/clickable using a variety of tools (e.g. Sketch, Marvel)",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand what an Interactive prototype is, its purpose and value.",
                                    "Create interactive/clickable prototype using Marvel.",
                                    "Design interactive prototypes integrating Sketch and Marvel.",
                                    "Design complex prototypes in Marvel/Sketch. Create design Handoffs and create and export UI flows."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE36",
                                  description: "Create game assets as GUI, 2D Sprites, 3D Models…",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the difference between an asset for apps creation and assets for a game assets creation.",
                                    "Apply character design principles and be able to produce 2D game assets.",
                                    "Create character design and be able to produce 3D game assets.",
                                    "Provide Guidance to Create Marketing resources and visual identity."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE36",
                                  description: "Understand the principle of typography. Know the basic terminology (font vs typeface, serif vs sans-serif, ecc.)",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the principle of typography. Know the basic terminology (font vs typeface, serif vs sans-serif, ecc.).",
                                    "Use principles of typography to provide visual hierarchy/structure.",
                                    "Apply principles of typography to consistently create text style throughout several screens.",
                                    "Provide guidance to create a consistent typography system across multiple visual products (app, keynotes, marketing materials)."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE06",
                                  description: "Apply principles of motion and animation design",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the role of motion and animation in UI Design. Recognise different types and contexts of animations.",
                                    "Use standard/native animation in UI design applying principle of motion to convey meaning in interactions.",
                                    "Design animation for different purposes (for example: UI transitions; in onboarding animated screens).",
                                    "Provide guidance for the design of consistent custom animation systems for UI interactions and animated screens."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE19",
                                  description: "Create interactive/clickable using a variety of tools (e.g. Sketch, Marvel)",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand what an Interactive prototype is, its purpose and value.",
                                    "Create interactive/clickable prototype using Marvel.",
                                    "Design interactive prototypes integrating Sketch and Marvel.",
                                    "Design complex prototypes in Marvel/Sketch. Create design Handoffs and create and export UI flows."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE36",
                                  description: "Create game assets as GUI, 2D Sprites, 3D Models…",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the difference between an asset for apps creation and assets for a game assets creation.",
                                    "Apply character design principles and be able to produce 2D game assets.",
                                    "Create character design and be able to produce 3D game assets.",
                                    "Provide Guidance to Create Marketing resources and visual identity."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE36",
                                  description: "Understand the principle of typography. Know the basic terminology (font vs typeface, serif vs sans-serif, ecc.)",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the principle of typography. Know the basic terminology (font vs typeface, serif vs sans-serif, ecc.).",
                                    "Use principles of typography to provide visual hierarchy/structure.",
                                    "Apply principles of typography to consistently create text style throughout several screens.",
                                    "Provide guidance to create a consistent typography system across multiple visual products (app, keynotes, marketing materials)."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE06",
                                  description: "Apply principles of motion and animation design",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the role of motion and animation in UI Design. Recognise different types and contexts of animations.",
                                    "Use standard/native animation in UI design applying principle of motion to convey meaning in interactions.",
                                    "Design animation for different purposes (for example: UI transitions; in onboarding animated screens).",
                                    "Provide guidance for the design of consistent custom animation systems for UI interactions and animated screens."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE19",
                                  description: "Create interactive/clickable using a variety of tools (e.g. Sketch, Marvel)",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand what an Interactive prototype is, its purpose and value.",
                                    "Create interactive/clickable prototype using Marvel.",
                                    "Design interactive prototypes integrating Sketch and Marvel.",
                                    "Design complex prototypes in Marvel/Sketch. Create design Handoffs and create and export UI flows."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE36",
                                  description: "Create game assets as GUI, 2D Sprites, 3D Models…",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the difference between an asset for apps creation and assets for a game assets creation.",
                                    "Apply character design principles and be able to produce 2D game assets.",
                                    "Create character design and be able to produce 3D game assets.",
                                    "Provide Guidance to Create Marketing resources and visual identity."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice),
                LearningObjective(id: 1, code: "DE36",
                                  description: "Understand the principle of typography. Know the basic terminology (font vs typeface, serif vs sans-serif, ecc.)",
                                  learningGoal: designGoal,
                                  levelDescriptions: [
                                    "Understand the principle of typography. Know the basic terminology (font vs typeface, serif vs sans-serif, ecc.).",
                                    "Use principles of typography to provide visual hierarchy/structure.",
                                    "Apply principles of typography to consistently create text style throughout several screens.",
                                    "Provide guidance to create a consistent typography system across multiple visual products (app, keynotes, marketing materials)."],
                                  targetLevel: KnowledgeLevel.novice,
                                  currentLevel: nil,
                                  mandatoryLevel: KnowledgeLevel.novice)
                
            ],
            
            SubjectArea.professionalGrowth: [
                LearningObjective(id: 1, code: "PG05",
                                  description: "Promote and match effectively professional opportunities to the alumnae network",
                                  learningGoal: growthGoal,
                                  levelDescriptions: [
                                    "Recognise the importance of being part of the alumnae Academy network.",
                                    "Actively be part of the alumnae network.",
                                    "Promote and match effectively professional opportunities to the alumnae network.",
                                    "Provide guidance in order to implement the database of professional contacts."
                    ], targetLevel: KnowledgeLevel.expert, currentLevel: nil, mandatoryLevel: nil),
                LearningObjective(id: 1, code: "PG05",
                                  description: "Promote and match effectively professional opportunities to the alumnae network",
                                  learningGoal: growthGoal,
                                  levelDescriptions: [
                                    "Recognise the importance of being part of the alumnae Academy network.",
                                    "Actively be part of the alumnae network.",
                                    "Promote and match effectively professional opportunities to the alumnae network.",
                                    "Provide guidance in order to implement the database of professional contacts."
                    ], targetLevel: KnowledgeLevel.expert, currentLevel: nil, mandatoryLevel: nil),
                LearningObjective(id: 1, code: "PG05",
                                  description: "Promote and match effectively professional opportunities to the alumnae network",
                                  learningGoal: growthGoal,
                                  levelDescriptions: [
                                    "Recognise the importance of being part of the alumnae Academy network.",
                                    "Actively be part of the alumnae network.",
                                    "Promote and match effectively professional opportunities to the alumnae network.",
                                    "Provide guidance in order to implement the database of professional contacts."
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
        case .professionalGrowth:
            return getObjectivesByArea()[.professionalGrowth]!
        default:
            return []
        }
    }
}
