//
//  TableViewController.swift
//  TestProject
//
//  Created by Kevin Clark on 2015-06-21.
//  Copyright © 2015 Kevin Clark. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
      super.viewDidLoad()
      
      tableView.registerClass(TestTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
      
      tableView.estimatedRowHeight = 60
      tableView.rowHeight = UITableViewAutomaticDimension
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
      return cell
    }

}
