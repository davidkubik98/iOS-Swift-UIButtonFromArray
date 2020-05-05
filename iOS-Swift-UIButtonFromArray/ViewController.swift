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
        
        for index in 0...5 {
            myButtonsArray.append("Button \(index)")
        }
        
        for (index,elemt) in myButtonsArray.enumerated() {
            let oneBtn : UIButton = {
                let button = UIButton()
                button.setTitle(elemt, for: .normal)
                button.backgroundColor = UIColor.gray
                button.layer.borderColor = UIColor.yellow.cgColor
                button.setTitleColor(UIColor.yellow, for: .normal)
                //button.translatesAutoresizingMaskIntoConstraints = false
                button.contentHorizontalAlignment = .center
                button.titleLabel?.font =  UIFont(name: "Arial", size: 20)
                button.layer.cornerRadius = 5
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                button.tag = index
                return button
            }()
            buttonsStack.addArrangedSubview(oneBtn)

        }
    } //End of ViewDidLoad

    @IBAction func buttonAction(sender: UIButton!) {
        print("Button tapped by tag \(sender.tag)")
    }
    
}

