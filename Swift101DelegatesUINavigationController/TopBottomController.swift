//
//  TopBottomController.swift
//  Swift101DelegatesUINavigationController
//
//  Created by David Seek on 8/29/18.
//  Copyright © 2018 David Seek. All rights reserved.
//

import UIKit


protocol TopBottomControllerDelegate {
    func topBottomController(topButtonPressed: Bool)
}


class TopBottomController: UIViewController {

    
    public var delegate: TopBottomControllerDelegate!

    @IBAction func topButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.delegate.topBottomController(topButtonPressed: true)
    }
    
    @IBAction func bottomButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.delegate.topBottomController(topButtonPressed: false)
    }
}
