//
//  ViewController.swift
//  TrafficProgSegues
//
//  Created by Azalia Amanda on 26/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segueSwutch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwutch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwutch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

