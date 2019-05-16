//
//  SchoolSATViewController.swift
//  20190516-DylanRothfeld-NYCSchools
//
//  Created by Dylan Rothfeld on 5/16/19.
//  Copyright © 2019 Dylan Rothfeld. All rights reserved.
//

import UIKit

class SchoolSATViewController: UIViewController {
    // Storyboard Outlets
    @IBOutlet weak var ControllerTitleLabel: UILabel!
    @IBOutlet weak var AverageSATReadingScoreLabel: UILabel!
    @IBOutlet weak var AverageSATMathScoreLabel: UILabel!
    @IBOutlet weak var AverageSATWritingScoreLabel: UILabel!
    
    // Controller Values
    let apiService = APIService()
    var schoolID: String!
    var schoolName: String!
    var schoolSAT: NYCSchoolSAT!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
