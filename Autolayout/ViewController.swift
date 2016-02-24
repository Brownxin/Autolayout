//
//  ViewController.swift
//  Autolayout
//
//  Created by WangXin on 2/24/16.
//  Copyright © 2016 WangXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var secure: Bool = false {
        didSet{
            updateUI()
        }
    }
    
    @IBAction func toggle(sender: UIButton) {
        secure = !secure
    }
    
    private func updateUI() {
        passwordField.secureTextEntry = true
        passwordLabel.text = secure ? "Secured Password" : " Password"
    }
}

