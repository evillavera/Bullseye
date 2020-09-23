//
//  EditHighScoreViewController.swift
//  Bullseye
//
//  Created by Erik Villavera on 9/22/20.
//  Copyright © 2020 Erik Villavera. All rights reserved.
//

import UIKit

class EditHighScoreViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func cancel(){
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(){
        navigationController?.popViewController(animated: true)
    }

}
