//
//  Objective.swift
//  CourseTracker
//
//  Created by Taylor Mott on 2/12/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Objective {
    
    var id = String()
    var name = String()
    var userHasMastered = false
    
    func updateWithDictionary(dictionary: [String : AnyObject]) {
        
        name = dictionary["studentCan"] as? String ?? ""
        
        if let newIDFloat = dictionary["objectiveID"] as? Float  {
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            numberFormatter.roundingMode = .halfUp
            numberFormatter.maximumFractionDigits = 1
            numberFormatter.minimumFractionDigits = 1
            
            id = numberFormatter.string(from: NSNumber(value: newIDFloat)) ?? ""
        }
        
    }
    
}
