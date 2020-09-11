//
//  ViewController.swift
//  Bullseye
//
//  Created by Erik Villavera on 9/2/20.
//  Copyright © 2020 Erik Villavera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title:"Hello, World", message: message,preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style:.default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
//        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
}

