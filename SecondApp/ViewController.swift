//
//  ViewController.swift
//  SecondApp
//
//  Created by 구현 on 12/30/24.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet var wordTextField: UITextField!
    @IBOutlet var recommendButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var postImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let url = URL(string: "https://media.istockphoto.com/id/184276818/ko/%EC%82%AC%EC%A7%84/%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4.jpg?s=612x612&w=0&k=20&c=qe0XwDHYbQFgVaqM2unXZWVqI7kV2SSfXrCYaHsdmWM=") {
            postImageView.kf.setImage(with: url)
        }
        
        
        
//        print(resultLabel.isUserInteractionEnabled)
        resultLabel.isUserInteractionEnabled = true
        recommendButton.isEnabled = false
        
//        aboutOptional()
    }

    @IBAction func textFieldReturnKeyTapped(_ sender: UITextField) {
        let text = wordTextField.text!
        
        if text.count == 0 {
            resultLabel.text = "검색어를 작성해주세요"
        } else {
            resultLabel.text = "\(text)를 입력"
        }
    }
    
    
    @IBAction func labelTapped(_ sender: UITapGestureRecognizer) {
        print(#function)
    }
    
//    func aboutOptional() {
//        var nickname: String? = "구구"
//        let age: Int? = 24
//        
////        nickname = nil
//        
//        // 1. 조건문
//        if nickname == nil {
//            print("닉네임에 문제가 있어요")
//        } else {
//            print("\(nickname!)으로 설정합니다.")
//        }
//        
//        // 2. Optional Binding
//        if let nickname = nickname {
//            print("\(nickname)으로 설정합니다.")
//        } else {
//            print("닉네임에 문제가 있어요")
//        }
//        
//        if let nickname {
//            print("\(nickname)으로 설정합니다.")
//        } else {
//            print("닉네임에 문제가 있어요")
//        }
//        
////        if let age = age {
////            print(age)
////        } else {
////            print("나이에 문제가 있어요")
////        }
//        
////        guard let age = age else {
////            
////        }
//        
////        guard let test = age else {
////            print("age가 nil임")
////        }
////        print(test)
//        
////        guard let age else {
////            print("age가 nil임")
////        }
////        print(age)
//       
//        
//        // 3. nil 병합 연산자
//        print(nickname ?? "손님")
//        
//        
//        // 4. 옵셔널 체이닝
//        print(wordTextField.text?.count)
//        
//    }
    
    
}

