//
//  Colors.swift
//  MyLearningJourney
//
//  Created by Andressa Valengo on 17/05/19.
//  Copyright © 2019 Andressa Valengo. All rights reserved.
//

import Foundation
import UIKit


final class Colors {
    static func getSubjectColor(subjectArea: SubjectArea) -> UIColor {
        let alpha = CGFloat(0.5)
        switch subjectArea {
        case .design:
            return UIColor(red:1.00, green:0.31, blue:0.19, alpha: alpha)
        case .professionalGrowth:
            return UIColor(red:0.16, green:0.37, blue:0.65, alpha: alpha)
        case .coding:
            return UIColor(red:0.57, green:0.47, blue:0.45, alpha: alpha)
        case .successSkills:
            return UIColor(red:0.78, green:0.62, blue:0.69, alpha: alpha)
        case .process:
            return UIColor(red:0.73, green:0.26, blue:0.15, alpha: alpha)
        case .it:
            return UIColor(red:0.41, green:0.41, blue:0.74, alpha: 0.8)
        }
    }
}

final class Images {
    static func getSubjectImage(subjectArea: SubjectArea) -> UIImage {
        switch subjectArea {
        case .design:
            return UIImage(named: "pencils")!
        case .professionalGrowth:
            return UIImage(named: "stairs")!
        case .coding:
            return UIImage(named: "coding")!
        case .successSkills:
            return UIImage(named: "skills")!
        case .process:
            return UIImage(named: "mountains")!
        case .it:
            return UIImage(named: "cables")!
        }
    }
    
}
