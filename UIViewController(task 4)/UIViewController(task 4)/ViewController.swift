//
//  ViewController.swift
//  UIViewController(task 4)
//
//  Created by admin on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let message = UserMessages()
    let signOutMessages =  UserMessages.SignOut()
    let actionSheetMessages = UserMessages.ActionSheet()
    let alertMessages = UserMessages.Alerts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressSimpleAlertButton(_ sender: UIButton) {
        let alert = UIAlertController( title: signOutMessages.title,
                                       message: signOutMessages.message,
                                       preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: message.cancelTitle,
                                      style: .cancel,
                                      handler: {action in print("You've pressed cancel")}))
        
        alert.addAction(UIAlertAction(title: message.signOutTitle,
                                      style: .default,
                                      handler: {action in print("Sign out")}))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressSimpleActionSheetButton(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: actionSheetMessages.title,
                                            message: actionSheetMessages.message,
                                            preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: message.approveTitle,
                                            style: .default,
                                            handler: {action in print("User click Approve button")}))
        
        actionSheet.addAction(UIAlertAction(title: message.editTitle,
                                            style: .default,
                                            handler:{action in print("User click Edit button")}))
        
        actionSheet.addAction(UIAlertAction(title: message.deleteTitle,
                                            style: .destructive,
                                            handler: {action in print("User click Delete button")}))
        
        actionSheet.addAction(UIAlertAction(title: message.dissmisTitle,
                                            style: .cancel,
                                            handler: {action in print("User click Dismiss button")}))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func didPressAlertWithDistractiveButton(_ sender: UIButton) {
        let alert = UIAlertController(title: signOutMessages.title,
                                      message: signOutMessages.message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: message.cancelTitle,
                                      style: .cancel,
                                      handler: {action in print("You've pressed cancel")}))
        
        alert.addAction(UIAlertAction(title: message.signOutTitle,
                                      style: .destructive,
                                      handler: {(_: UIAlertAction!) in
                                      }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressAlertWithMoreThan2Buttons(_ sender: UIButton) {
        let alert = UIAlertController(title: alertMessages.title,
                                      message: alertMessages.messageForMoreThan2Buttons,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: message.defaultTitle,
                                      style: .default,
                                      handler: {action in print("You've pressed default")}))
        
        alert.addAction(UIAlertAction(title: message.cancelTitle,
                                      style: .default,
                                      handler: {action in print("You've pressed cancel")}))
        
        alert.addAction(UIAlertAction(title: message.destructiveTitle,
                                      style: .destructive,
                                      handler: {action in print("You've pressed Destractive")}))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didPressAlertWithUITextField(_ sender: UIButton) {
        let alert = UIAlertController(title: alertMessages.title,
                                      message: alertMessages.messageForTextField,
                                      preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
                            textField.placeholder = "Tag"})
        
        alert.addAction(UIAlertAction(title: message.addTitle,
                                      style: .default,
                                      handler: { (_) in
                                        if let textField = alert.textFields?.first,
                                           let text = textField.text { print(text) }}))
        
        alert.addAction(UIAlertAction(title: message.cancelTitle,
                                      style: .cancel,
                                      handler:{action in print("You've pressed cancel")}))
        
        self.present(alert, animated: true, completion: nil)
    }
}




