//
//  ViewController4.swift
//  UIViewController
//
//  Created by admin on 09.07.2021.
//

import UIKit

class ViewController4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Fourth ViewController"
    }
    
    @IBAction func goToVC5(_ sender: UIButton) {
        let viewController: ViewController5 = UIStoryboard.instantiateViewController()
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
