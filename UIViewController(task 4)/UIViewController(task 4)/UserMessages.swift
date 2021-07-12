//
//  UserMessages.swift
//  UIViewController(task 4)
//
//  Created by admin on 12.07.2021.
//

import Foundation

struct UserMessages {
    
    let cancelTitle = "Cancel"
    let editTitle = "Edit"
    let dissmisTitle = "Dismiss"
    let approveTitle = "Approve"
    let defaultTitle = "Default"
    let addTitle = "Add"
    let destructiveTitle = "Destructive"
    let deleteTitle = "Delete"
    let signOutTitle = "Sign out"
    
    struct SignOut {
        let title = "Sign out?"
        let message = "You can always access your content by signing back in"
    }
    
    struct ActionSheet {
        let title = "Title"
        let message = "Please Select An Option"
    }
    
    struct Alerts {
        let title = "Alert"
        let messageForMoreThan2Buttons = "Alert with more than 2 buttons"
        let messageForTextField = "Alert With UITextField"
    }
}


