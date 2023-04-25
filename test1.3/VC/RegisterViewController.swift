//
//  RegisterViewController.swift
//  test1.3
//
//  Created by Islam Erlan Uulu on 24/4/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    
    
    @IBOutlet weak var mobileTF: UITextField!
    
    
    @IBOutlet weak var passTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func login2(_ sender: UIButton) {
        let username = usernameTF.checkForEmptiness()
        let email = emailTF.checkForEmptiness()
        let mobile = mobileTF.checkForEmptiness()
        let pass = passTF.checkForEmptiness()
        if username && email && mobile && pass {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "FGViewController") as! FGViewController
            vc.email1 = emailTF.text
            self.present(vc, animated: true)
        }
       
    }
    
}
