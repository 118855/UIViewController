//
//  ViewController.swift
//  UIViewController(task2)
//
//  Created by admin on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var pushRedLabel: UIButton!
    @IBOutlet private weak var pushGreenLabel: UIButton!
    @IBOutlet private weak var pushBlueLabel: UIButton!
    
    let main = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    @IBAction func didTapPushRedButton(_ sender: UIButton) {
        didTapButtonToPushSecondVC(button: pushRedLabel)
    }
    
    @IBAction func didTapPushGreenButton(_ sender: UIButton) {
        didTapButtonToPushSecondVC(button: pushGreenLabel)
    }
    
    @IBAction func didTapPushBlueButton(_ sender: UIButton) {
        didTapButtonToPushSecondVC(button: pushBlueLabel)
        
    }
    
    private func didTapButtonToPushSecondVC ( button: UIButton) {
        
        guard let secondViewController = main.instantiateViewController(identifier: String(describing: SecondViewController.self)) as? SecondViewController else {return}
        
        secondViewController.textPuttedInTextField = textField.text
        secondViewController.backgroundColor = button.backgroundColor
        
        secondViewController.deletate = self
        
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension ViewController: ViewControllerDelegate {
    func update(textPuttedInTextField: String) {
        textField.text = textPuttedInTextField
    }
}

