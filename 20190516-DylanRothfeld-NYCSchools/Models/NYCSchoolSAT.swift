//
//  NYCSchoolSAT.swift
//  20190516-DylanRothfeld-NYCSchools
//
//  Created by Dylan Rothfeld on 5/16/19.
//  Copyright © 2019 Dylan Rothfeld. All rights reserved.
//

import Foundation

// A model that defines a single NYC School's SAT data
struct NYCSchoolSAT: Equatable {
    var averageSATScoreReading: String
    var averageSATScoreMath: String
    var averageSATScoreWriting: String
    
    
    // Initializes new NYCSchoolSAT object
    init(averageSATScoreReading: String, averageSATScoreMath: String, averageSATScoreWriting: String) {
        self.averageSATScoreReading = averageSATScoreReading
        self.averageSATScoreMath = averageSATScoreMath
        self.averageSATScoreWriting = averageSATScoreWriting
    }
    
    // Initializes local NYCSchoolSAT model from JSON string
    init?(json: [String: Any]) throws {
        // Extract and validate the average reading SAT score
        guard let averageSATScoreReading = json["sat_critical_reading_avg_score"] as? String else {
            throw SerializationError.missing("sat_critical_reading_avg_score")
        }
        
        // Extract and validate the average math SAT score
        guard let averageSATScoreMath = json["sat_math_avg_score"] as? String else {
            throw SerializationError.missing("sat_math_avg_score")
        }
        
        // Extract and validate the average writing SAT score
        guard let averageSATScoreWriting = json["sat_writing_avg_score"] as? String else {
            throw SerializationError.missing("sat_writing_avg_score")
        }
        
        self.averageSATScoreReading = averageSATScoreReading
        self.averageSATScoreMath = averageSATScoreMath
        self.averageSATScoreWriting = averageSATScoreWriting
    }
    
    // Returns true if two NYCShoolSAT structs have the same average scores
    static func == (schoolA: NYCSchoolSAT, schoolB: NYCSchoolSAT) -> Bool {
        return (
            (schoolA.averageSATScoreReading == schoolB.averageSATScoreReading) &&
                (schoolA.averageSATScoreMath == schoolB.averageSATScoreMath) &&
                (schoolA.averageSATScoreWriting == schoolB.averageSATScoreWriting)
        )
    }
}
