//
//  ShowViewController.swift
//  SecondApp
//
//  Created by 구현 on 12/31/24.
//

import UIKit

class ShowViewController: UIViewController {

    let colorList: [UIColor] = [.brown, .lightGray, .darkGray, .systemIndigo, .systemBlue]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = colorList.randomElement()
        print(self, #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(self, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(self, #function)
    }
    
}
