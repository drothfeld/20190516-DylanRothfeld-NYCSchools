//
//  _0190516_DylanRothfeld_NYCSchoolsTests.swift
//  20190516-DylanRothfeld-NYCSchoolsTests
//
//  Created by Dylan Rothfeld on 5/16/19.
//  Copyright © 2019 Dylan Rothfeld. All rights reserved.
//

import XCTest
@testable import _0190516_DylanRothfeld_NYCSchools

class _0190516_DylanRothfeld_NYCSchoolsTests: XCTestCase {

    // UNIT TEST:
    // Tests API call to fetch New York City School data.
    // Only makes sure the API call runs without issue (success or fail).
    func testAPIGetNYCSchoolData() {
        // Given
        let apiService = APIService()
        
        // When
        apiService.getNYCSchoolData( completion: { results in
            switch results {
            case .success(let schools):
                let schoolList: [NYCSchool] = schools
                
                // Then
                XCTAssert(!schoolList.isEmpty)
                
            case .failure(let error):
                print(error.localizedDescription)
                
                // Then
                XCTAssert(!error.localizedDescription.isEmpty)
            }
        })
    }
    
    
    // UNIT TEST:
    // Tests API call to fetch New York City School SAT data.
    // Only makes sure the API call runs without issue (success or fail).
    func testAPIGetNYCSchoolSATData() {
        // Given
        let apiService = APIService()
        let testSchoolSAT: NYCSchoolSAT = NYCSchoolSAT(averageSATScoreReading: "428", averageSATScoreMath: "465", averageSATScoreWriting: "422")
        let schoolID = "32K554"
        
        // When
        apiService.getNYCSchoolSATData(schoolID: schoolID, completion: { results in
            switch results {
            case .success(let school):
                let schoolSAT: NYCSchoolSAT = school
                
                // Then
                XCTAssert(schoolSAT == testSchoolSAT)
                
            case .failure(let error):
                print(error.localizedDescription)
                
                // Then
                XCTAssert(!error.localizedDescription.isEmpty)
            }
        })
    }
}
