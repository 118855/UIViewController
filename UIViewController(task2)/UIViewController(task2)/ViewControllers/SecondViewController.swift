//
//  SecondViewController.swift
//  UIViewController(task2)
//
//  Created by admin on 11.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var textPuttedInTextField: String?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = textPuttedInTextField
        view.backgroundColor = backgroundColor
        }
    
}
