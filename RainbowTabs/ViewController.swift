//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Azalia Amanda on 26/05/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "!"
//        tabBarItem.badgeValue = nil
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarItem.badgeValue = nil
    }


}

