//
//  ViewController.swift
//  UIViewController
//
//  Created by admin on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First ViewController"
    }
    
    @IBAction func goToVC2(_ sender: UIButton) {
        let viewController: ViewController2 = UIStoryboard.instantiateViewController()
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    @IBAction func goToVC3(_ sender: UIButton) {
        let viewController: ViewController3 = UIStoryboard.instantiateViewController()
        
        viewController.modalPresentationStyle = .fullScreen
        
        present(viewController, animated: true, completion: nil)
    }
}

