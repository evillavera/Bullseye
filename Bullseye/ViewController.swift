//
//  ViewController.swift
//  Bullseye
//
//  Created by Erik Villavera on 9/2/20.
//  Copyright © 2020 Erik Villavera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title:"Hello, World", message: "This is my first app!",preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style:.default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

