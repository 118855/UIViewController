//
//  SecondViewController.swift
//  UIViewController(task2)
//
//  Created by admin on 11.07.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet private weak var textFieldSecondVC: UITextField!
    
    weak var deletate: ViewControllerDelegate?
    
    var textPuttedInTextField: String?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldSecondVC.text = textPuttedInTextField
        view.backgroundColor = backgroundColor
        
        textFieldSecondVC.delegate = self
    }
}

extension SecondViewController: UITextFieldDelegate  {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        deletate?.update(textPuttedInTextField: textFieldSecondVC.text ?? " ")
        
        navigationController?.popViewController(animated: true)
        return true
    }
}
