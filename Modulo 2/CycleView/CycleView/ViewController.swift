//
//  ViewController.swift
//  CycleView
//
//  Created by Angel Ricardo Solsona Nevero on 25/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("SecondView View WillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("SecondView View DidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("SecondView View WillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("SecondView View DidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

