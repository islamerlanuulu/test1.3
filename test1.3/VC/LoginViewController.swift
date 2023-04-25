//
//  ViewController.swift
//  test1.3
//
//  Created by Islam Erlan Uulu on 24/4/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginTF(_ sender: Any) {
        let login = loginTF.checkForEmptiness()
        let login2 = passwordTF.checkForEmptiness()
    }
    
    
    @IBAction func eye(_ sender: Any) {
    }
}


extension UITextField {
    func checkForEmptiness() -> Bool {
            if self.text?.isEmpty == true {
                self.placeholder = "Заполните, пожалуйста"
                let color: UIColor =  #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
                self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : color])
                self.layer.borderColor =  #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
                return false
            } else {
                let color: UIColor =  #colorLiteral(red: 0.6470588446, green: 0.6470588446, blue: 0.6470588446, alpha: 0.4804852214)
                self.layer.borderColor =  #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
                self.placeholder = "Login"
                self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : color])
                return true
            }
    }
}
