//
//  File.swift
//  UIViewController(task2)
//
//  Created by admin on 11.07.2021.
//

import Foundation

protocol ViewControllerDelegate: class {
    func update(textPuttedInTextField: String)
}
