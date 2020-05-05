//
//  ViewController.swift
//  iOS-Swift-UIButtonFromArray
//
//  Created by Pooya on 2020-05-04.
//  Copyright © 2020 centurytrail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonsStack: UIStackView!
    var myButtonsArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...7 {
            myButtonsArray.append("Button \(index)")
        }
        
        for (index,element) in myButtonsArray.enumerated() {
            let oneBtn : UIButton = {
                let button = UIButton()
                button.setTitle(element, for: .normal)
                button.backgroundColor = UIColor.gray
                button.layer.borderColor = UIColor.yellow.cgColor
                button.layer.borderWidth = 1
                button.setTitleColor(UIColor.yellow, for: .normal)
                //button.translatesAutoresizingMaskIntoConstraints = false
                button.contentHorizontalAlignment = .center
                button.contentVerticalAlignment = .center
                button.titleLabel?.font = UIFont(name: "Arial", size: 22)
                button.layer.cornerRadius = 5
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                button.tag = index
                return button
            }()
            buttonsStack.addArrangedSubview(oneBtn)
            
        }
        
        
    } //End ViewDidload
    
    @IBAction func buttonAction(sender: UIButton!) {
        print("Button tapped with tag \(sender.tag)")
    }
    
}

