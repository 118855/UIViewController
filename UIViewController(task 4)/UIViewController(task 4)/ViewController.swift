//
//  ViewController.swift
//  UIViewController(task 4)
//
//  Created by admin on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressSimpleAlertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sing out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in print("You've pressed cancel")}))
        alert.addAction(UIAlertAction(title: "Sing out", style: .default, handler: {action in print("Sign out")}))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressSimpleActionSheetButton(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Title", message: "Please Select An Option", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Approve", style: .default, handler: {action in print("User click Approve button")}))
        actionSheet.addAction(UIAlertAction(title: "Edit", style: .default, handler:{action in print("User click Edit button")}))
        actionSheet.addAction(UIAlertAction(title: "Delete", style: .default, handler: {action in print("User click Delete button")}))
        actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in print("User click Dismiss button")}))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func didPressAlertWithDistractiveButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sing out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in print("You've pressed cancel")}))
        alert.addAction(UIAlertAction(title: "Sing out", style: .destructive, handler: {(_: UIAlertAction!) in
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func didPressAlertWithMoreThan2Buttons(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: {action in print("You've pressed default")}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in print("You've pressed cancel")}))
        alert.addAction(UIAlertAction(title: "Destractive", style: .destructive, handler: {action in print("You've pressed Destractive")}))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressAlertWithUITextField(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Alert With UITextField", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {(textField) in
                            textField.placeholder = "Tag"})
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (_) in
                                        if let txtField = alert.textFields?.first, let text = txtField.text { print(text) }}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{action in print("You've pressed cancel")}))
        
        self.present(alert, animated: true, completion: nil)
    }
}

