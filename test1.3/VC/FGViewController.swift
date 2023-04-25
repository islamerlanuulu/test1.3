//
//  FGViewController.swift
//  test1.3
//
//  Created by Islam Erlan Uulu on 24/4/23.
//

import UIKit

class FGViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    
    var email1: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        email.text = email1
    }
    

}
