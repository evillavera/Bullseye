//
//  EditHighScoreViewController.swift
//  Bullseye
//
//  Created by Erik Villavera on 9/22/20.
//  Copyright © 2020 Erik Villavera. All rights reserved.
//

import UIKit

protocol EditHighScoreViewControllerDelegate: class {
    func editHighScoreViewControllerDidCancel(_ controller: EditHighScoreViewController)
    func editHighScoreViewController(_ controller: EditHighScoreViewController, didFinishEditing item: HighScoreItem)
}

class EditHighScoreViewController: UITableViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.text = highScoreItem.name
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBAction func cancel(){
        delegate?.editHighScoreViewControllerDidCancel(self)
    }
    
    @IBAction func done(){
//        print("Contents of the text field: \(textField.text!)")
        highScoreItem.name = textField.text!
        
        delegate?.editHighScoreViewController(self, didFinishEditing: highScoreItem)
    }

    weak var delegate: EditHighScoreViewControllerDelegate?
    var highScoreItem: HighScoreItem!
    
    // MARK:- Table View Delegates
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath)
    -> IndexPath? { return nil
    }
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
    textField.becomeFirstResponder()
    }
    
    // MARK:- Text Field Delegates
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
    replacementString string: String) -> Bool {
        let oldText = textField.text!
        let stringRange = Range(range, in: oldText)!
        let newText = oldText.replacingCharacters(in: stringRange, with: string)
        
        doneBarButton.isEnabled = !newText.isEmpty
        
        return true
    }
    
}
