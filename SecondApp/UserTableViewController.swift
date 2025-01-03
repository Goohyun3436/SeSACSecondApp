//
//  UserTableViewController.swift
//  SecondApp
//
//  Created by 구현 on 1/3/25.
//

import UIKit
import Kingfisher

struct Friend {
    let name: String
    let message: String
    let profile_image: String
}

class UserTableViewController: UITableViewController {
    
    let friends = FriendsInfo().list

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        
        let row = friends[indexPath.row]
        
        cell.nameLabel.text = row.name
        cell.messageLabel.text = row.message
        cell.profileImageView.backgroundColor = .systemGray4
        
        let image = row.profile_image
        
        if let image {
            let url = URL(string: image)
            cell.profileImageView.kf.setImage(with: url)
        } else {
            cell.profileImageView.image = UIImage(systemName: "person.fill")
        }
        
        let likeImage = row.like ? "hand.thumbsup.fill" : "hand.thumbsdown.fill"
        cell.likeButton.setImage(UIImage(systemName: likeImage), for: .normal)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
