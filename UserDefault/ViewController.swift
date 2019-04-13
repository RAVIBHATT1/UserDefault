//
//  ViewController.swift
//  UserDefault
//
//  Created by Akash Padhiyar on 10/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MyTextBox: UITextField!
    
    @IBOutlet weak var MyLabel: UILabel!
    
    
    @IBAction func btnsetvalue(_ sender: Any) {
        let myarray = MyTextBox.text
        UserDefaults.standard.setValue(myarray, forKey: "UserName")
        UserDefaults.standard.synchronize()
        print("record Insert ::\(String(describing: myarray))")
        self.view.backgroundColor = #colorLiteral(red: 0.250524391, green: 0.6484771574, blue: 0.05876269382, alpha: 1)
    }
    
    @IBAction func getValue(_ sender: Any) {
        MyLabel.isHidden = false
        UserDefaults.standard.string(forKey: "UserName")
        MyLabel.text = UserDefaults.standard.string(forKey: "UserName")
        self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        MyLabel.isHidden = true
        // Do any additional setup after loading the view.
    }


}

