//
//  BasicTableViewController.swift
//  SecondApp
//
//  Created by 구현 on 1/2/25.
//

import UIKit

class BasicTableViewController: UITableViewController {
    
    let randomList = ["1", "2", "3"]
    var list = ["프로젝트", "메인업무", "새싹과제"] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.rowHeight = 80
        
//        var monster = Monster(clothes: "Goo", speed: 1, power: 2, experience: 3)
//        print(monster)
//        
//        var monsterStruct = MonsterStruct(clothes: "Goo", speed: 1, power: 2, experience: 3)
//        print(monsterStruct)
        
    }
    
    @IBAction func randomButtonTapped(_ sender: UIBarButtonItem) {
        let randomEl = randomList.randomElement()!
        list.append(randomEl)
    }
    
    // 셀 클릭 했을 때
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, indexPath)
        
        list.remove(at: indexPath.row)
    }
    
    
    
    // 1. 셀의 개수
//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count
//        return 3
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "gooCell")!
        
//        cell.textLabel?.text = "\(indexPath.row)"
        cell.textLabel?.text = list[indexPath.row]
        
//
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "프로젝트"
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = "쇼핑"
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = "메인업무"
//        } else {
//            cell.textLabel?.text = "indexPath.row 오류"
//        }
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .lightGray
        }
//        else {
//            cell.backgroundColor = .white
//        }
        
//        cell.detailTextLabel?.text = "detailTextLabel"
        cell.detailTextLabel?.setPrimaryLabel("setPrimaryLabel")
        
        cell.textLabel?.textColor = .red
        cell.textLabel?.font = .systemFont(ofSize: 20)
        
        return cell
    }
    
    // 3. 셀의 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function, indexPath)
//        if indexPath.row == 0 {
//            return 30.0
//        } else {
//            return 80.5
//        }
        return 80.5
    }

}
