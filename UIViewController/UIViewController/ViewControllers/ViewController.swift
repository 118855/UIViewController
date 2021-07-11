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
        
        viewController.title = "Second UIViewController"
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    @IBAction func goToVC3(_ sender: UIButton) {
        let viewController: ViewController3 = UIStoryboard.instantiateViewController()
        
        viewController.modalPresentationStyle = .fullScreen
        
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func goToVC4(_ sender: UIButton) {
        let viewController: ViewController4 = UIStoryboard.instantiateViewController()
        
        let navigationControllerOfVC4 = UINavigationController(rootViewController: viewController)

        navigationControllerOfVC4.modalTransitionStyle = .coverVertical
        navigationControllerOfVC4.modalPresentationStyle = .fullScreen

        self.navigationController?.present(navigationControllerOfVC4, animated: true, completion: nil)
    }
    
}

