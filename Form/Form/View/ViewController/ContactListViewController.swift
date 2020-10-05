//
//  ContactListViewController.swift
//  Form
//
//  Created by Ye Ko Ko Htet on 03/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController {
    
    static let identifier = "ContactListViewController"

    @IBOutlet weak var tableViewContactList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. cell register
        tableViewContactList.register(UINib(nibName: ContactListItemTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: ContactListItemTableViewCell.identifier)
        
        // remove separator line
        tableViewContactList.separatorStyle = .none
        
        tableViewContactList.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        
        // 2. datasource
        tableViewContactList.dataSource = self
    }
    
}

extension ContactListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactListItemTableViewCell.identifier, for: indexPath) as! ContactListItemTableViewCell
//        cell.post = PostVO()
        return cell
    }
}
