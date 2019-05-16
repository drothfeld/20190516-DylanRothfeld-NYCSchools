//
//  SchoolListViewController.swift
//  20190516-DylanRothfeld-NYCSchools
//
//  Created by Dylan Rothfeld on 5/16/19.
//  Copyright © 2019 Dylan Rothfeld. All rights reserved.
//

import UIKit

class SchoolListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    // Storyboard Outlets
    @IBOutlet weak var schoolListTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "schoolCell", for: indexPath)
        
        return cell
    }

}

