//
//  Extention.swift
//  UIViewController
//
//  Created by admin on 11.07.2021.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func instantiateViewController<T: UIViewController>() -> T {
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        guard let viewController = main.instantiateViewController(withIdentifier: T.identifier) as? T else {
            fatalError("Couldn't instantiate view controller")
        }
        return viewController
    }
}


