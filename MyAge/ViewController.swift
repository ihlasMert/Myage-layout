//
//  ViewController.swift
//  MyAge
//
//  Created by ihlas on 31.12.2021.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet var textYearofBirth: UITextField!
    @IBOutlet var lashowAge: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func BuFindDage(_ sender: Any) {
        
        
        
        GetAge()
    }
    
    
    func GetAge(){
        
        
        
        let yearOfAge = Int(textYearofBirth.text!)
        
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        
        
        let personAge = 2022 - yearOfAge!
        lashowAge.text = "your age is \(personAge)"
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn( textField: UITextField) -> Bool{
        GetAge()
        self.view.endEditing(true)
        return true
        
    }
    
    
}

