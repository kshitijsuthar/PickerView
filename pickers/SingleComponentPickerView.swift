//
//  SingleComponentPickerView.swift
//  pickers
//
//  Created by Kshitij Suthar on 2017-10-11.
//  Copyright © 2017 Kshitij Suthar. All rights reserved.
//

import UIKit

class SingleComponentPickerView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var singlePicker: UIPickerView!
    
    private let characterNames = ["Han Solo", "Luke Skywalker", "Leia Skywalker", "Darth Vader", "General Tarkin", "K-2SO"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)"
        
        let alert = UIAlertController(
            title: title,
            message: "Thank you for choosing",
            preferredStyle: .alert)
        
        
        let action = UIAlertAction(
            title: "You're welcome",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }

}
