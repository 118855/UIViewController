//
//  ViewController5.swift
//  UIViewController
//
//  Created by admin on 09.07.2021.
//

import UIKit

class ViewController5: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Fifth UIViewController"
    }
    
    @IBAction func didTapVC5Button(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
