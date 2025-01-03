//
//  UILabel+Extension.swift
//  SecondApp
//
//  Created by 구현 on 1/2/25.
//

import UIKit

extension UILabel {
    
    func setPrimaryLabel(_ text: String) {
        self.text = text
        self.textAlignment = .center
        self.font = .systemFont(ofSize: 14, weight: .bold)
        self.textColor = .green
    }
    
}
