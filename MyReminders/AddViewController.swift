//
//  AddViewController.swift
//  MyReminders
//
//  Created by justin dongwook Jung on 2020/07/14.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var bodyField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    public var completion: ((String, String, Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSaveButton))
    }
    
    @IBAction func didTapSaveButton(){
        if let titleText = titleField.text, !titleText.isEmpty,
            let bodyText = bodyField.text, !bodyText.isEmpty {
            
            let targetDate = datePicker.date
            
            completion?(titleText, bodyText, targetDate)
        }
    }
    

  

}
