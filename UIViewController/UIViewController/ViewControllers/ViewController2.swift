//
//  ViewController2.swift
//  UIViewController
//
//  Created by admin on 09.07.2021.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Second ViewController"
    }
    
    @IBAction func goToRootVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
