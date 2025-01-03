//
//  UserTableViewController.swift
//  SecondApp
//
//  Created by 구현 on 1/3/25.
//

import UIKit

struct Friend {
    let name: String
    let message: String
    let profile_image: String
}

class UserTableViewController: UITableViewController {
    
    let friends: [Friend] = [
        .init(name: "고래밥", message: "고래밥 냠냠", profile_image: "star"),
        .init(name: "칙촉", message: "행복한 하루", profile_image: "pencil"),
        .init(name: "카스타드", message: "배고파", profile_image: "star.fill")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        
        cell.nameLabel.text = friends[indexPath.row].name
        cell.messageLabel.text = friends[indexPath.row].message
        cell.profileImageView.image = UIImage(systemName: friends[indexPath.row].profile_image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
