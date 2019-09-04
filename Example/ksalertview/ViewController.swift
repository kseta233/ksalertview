//
//  ViewController.swift
//  ksalertview
//
//  Created by kseta233 on 09/04/2019.
//  Copyright (c) 2019 kseta233. All rights reserved.
//

import UIKit
import ksalertview

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnTestAct(_ sender: Any) {
        KSAlertView.alertPopUp(title: "TEST", message: "messag", style: .alert)
            .willCancel()
            .present(on: self)
    }
    
}

