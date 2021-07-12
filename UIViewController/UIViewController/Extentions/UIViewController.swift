//
//  UIViewController.swift
//  UIViewController
//
//  Created by admin on 12.07.2021.
//

import Foundation
import UIKit

extension UIViewController {
    class var identifier: String {
        return String(describing: self)
    }
}
