//
//  LeftRightController.swift
//  Swift101DelegatesUINavigationController
//
//  Created by David Seek on 8/29/18.
//  Copyright © 2018 David Seek. All rights reserved.
//

import UIKit


protocol LeftRightControllerDelegate {
    func leftRightController(leftButtonPressed: Bool)
}


class LeftRightController: UIViewController {


    public var delegate: LeftRightControllerDelegate!
    
    @IBAction func leftButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
        self.delegate.leftRightController(leftButtonPressed: true)
    }
    
    @IBAction func rightButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
        self.delegate.leftRightController(leftButtonPressed: false)
    }
}
