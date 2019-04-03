//
//  ViewController.swift
//  FindMyAge
//
//  Created by LABMAC18 on 08/02/19.
//  Copyright © 2019 utng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var laShowAge: UILabel!
    @IBOutlet weak var txtYearOfBirth: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func BuFindDage(_ sender: Any) {
      
        GetAge()
        
    }
    func GetAge(){
        //fire click of button
        let yearOfBirth = Int(txtYearOfBirth.text!)
        //get current year
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        
        let personAge = 2019 - yearOfBirth!
        laShowAge.text = "Su edad es \(personAge)"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        /// fire some click of return keybaord
        GetAge()
         self.view.endEditing(true)
        return true
    }

}

































