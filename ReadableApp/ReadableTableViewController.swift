//
//  ReadableTableViewController.swift
//  ReadableApp
//
//  Created by Alexey Lizenko on 1/22/18.
//  Copyright © 2018 Alexey Lizenko. All rights reserved.
//

import UIKit



class ReadableTableViewController: UITableViewController, MarginWidthDesirable {
    let readableCellId = "readableCellId"
    let desirableContentWidth: CGFloat = 512
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib = UINib(nibName: "ReadableCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: readableCellId)

        let rc = UILayoutGuide()
        rc.identifier = "UIViewLayoutMarginsGuide"
        
        self.view.addLayoutGuide(rc)
    }
 
    override func viewWillLayoutSubviews() {
        updateMarginsForDesirableContentSize()
        super.viewWillLayoutSubviews()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: readableCellId) as! ReadableCell
    
        switch indexPath.row {
        case 1:
            cell.accessoryType = .none
        case 2:
            cell.accessoryType = .checkmark
        case 3:
            cell.accessoryType = .detailButton
        case 4:
            cell.accessoryType = .detailDisclosureButton
        default:
            cell.accessoryType = .none
        }
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
