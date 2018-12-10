//
//  ViewController.swift
//  testMultipleViews
//
//  Created by kaww on 18/11/2018.
//  Copyright © 2018 Kaww. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Variables
    var menuIsHidden = true
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leadingConstraint.constant = -210
        menuView.layer.shadowOpacity = 0.4
        menuView.layer.shadowRadius = 20
    }

    @IBAction func toggleMenu(_ sender: UIBarButtonItem) {
        if menuIsHidden {
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        } else {
            leadingConstraint.constant = -210
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        
        menuIsHidden = !menuIsHidden
    }
    
    
}


