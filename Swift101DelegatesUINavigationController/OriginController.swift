//
//  OriginController.swift
//  Swift101DelegatesUINavigationController
//
//  Created by David Seek on 8/29/18.
//  Copyright © 2018 David Seek. All rights reserved.
//

import UIKit


class OriginController: UIViewController {

    
    // - Outlets
    @IBOutlet weak var selectionLabel: UILabel!
    
    // - Stored
    private var leftRightController: LeftRightController {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LeftRightController") as! LeftRightController
        controller.delegate = self
        return controller
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "navigationSegue" {
            
            let controller = segue.destination as! TopBottomController
            controller.delegate = self
        }
    }
    
    
    @IBAction func navigationButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "navigationSegue", sender: self)
    }
    
    @IBAction func presentationButtonPressed(_ sender: Any) {
        self.present(leftRightController, animated: true)
    }
}

// MARK: - TopBottomControllerDelegate
extension OriginController: TopBottomControllerDelegate {
    
    func topBottomController(topButtonPressed: Bool) {
        self.selectionLabel.text = topButtonPressed ? "Top" : "Bottom"
    }
}

// MARK: - LeftRightControllerDelegate
extension OriginController: LeftRightControllerDelegate {
    
    func leftRightController(leftButtonPressed: Bool) {
        self.selectionLabel.text = leftButtonPressed ? "Left" : "Right"
    }
}
