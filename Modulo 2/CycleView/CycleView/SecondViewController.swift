//
//  SecondViewController.swift
//  CycleView
//
//  Created by Angel Ricardo Solsona Nevero on 25/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
