//
//  OptionalViewController.swift
//  SecondApp
//
//  Created by 구현 on 12/30/24.
//

import UIKit

class OptionalViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewBackground()

        // UserDefaults에 저장된 데이터 가져오기
        numberTextField.text = UserDefaults.standard.string(forKey: "number")
        
        // UserDefaults 경로 출력
        print(NSHomeDirectory())
        
        dateLabel.text = getToday()
        
    }
    
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        // 실시간으로 레이블에 내용 반영
        // 입력한 내용이 숫자라면 숫자 그대로 출력
        // 입력한 내용이 문자라면 숫자가 아닙니다 출력
        
        guard let text = sender.text else {
            print("입력한 내용이 nil 입니다.")
            return
        }
        
        // if let 구문
//        if let textToNum = Int(text) {
//            resultLabel.text = "\(textToNum)"
//        } else {
//            resultLabel.text = "숫자가 아닙니다"
//        }
        
        // guard let 구문 - 1
//        guard let textToNum = Int(text) else {
//            resultLabel.text = "숫자가 아닙니다"
//            return
//        }
//        
//        resultLabel.text = "\(textToNum)"
        
        // guard let 구문 - 2
        guard Int(text) != nil else {
            resultLabel.text = "숫자가 아닙니다"
            return
        }
        
//        print(Int(text)!)
        resultLabel.text = text
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // TextField에 적었던 내용을 영구적으로 저장.
        
        UserDefaults.standard.set(numberTextField.text, forKey: "number")
        
        // Alert, 사용자에게 성공적으로 저장이 되었다는 알림을 주기
        // 1. 타이틀 + 메시지
//        let alert = UIAlertController(title: "저장되었습니다", message: "숫자가 성공적으로 저장되었어요", preferredStyle: .actionSheet)
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
//        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // 2. 버튼
        let okButton = UIAlertAction(title: "확인", style: .destructive)
        let test1Button = UIAlertAction(title: "test1", style: .default)
        let test2Button = UIAlertAction(title: "test2", style: .cancel)
        let test3Button = UIAlertAction(title: "test3", style: .default)
        
        // 3. 본문에 버튼 추가: 순서대로 붙음
        alert.addAction(okButton)
        alert.addAction(test1Button)
        alert.addAction(test2Button)
        alert.addAction(test3Button)
        
        // 4. 화면에 띄우기
        present(alert, animated: true)
    }
    
    // 매개변수, 반환값 없는 함수
    func today() {
        
    }
    
    func getToday() -> String {
        let format = DateFormatter()
        format.dateFormat = "yyyy년 MM월 dd일"
        let today = format.string(from: Date())
        
        return today
    }
    
    func randomInt() -> Int {
        return Int.random(in: 1...100)
    }
    
//    func randomInt() -> Int {
//        Int.random(in: 1...100)
//    }
    
    @discardableResult func printTodayWithReturn() -> String {
        let format = DateFormatter()
        format.dateFormat = "yyyy년 MM월 dd일"
        let today = format.string(from: Date())
        
        print(today)
        
        return today
    }
    
}
