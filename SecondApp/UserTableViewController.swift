//
//  UserTableViewController.swift
//  SecondApp
//
//  Created by 구현 on 1/3/25.
//

import UIKit

class UserTableViewController: UITableViewController {
    
    let name = ["고래밥", "칙촉", "카스타드"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        
        cell.profileImageView.backgroundColor = .brown
        cell.nameLabel.text = name[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
