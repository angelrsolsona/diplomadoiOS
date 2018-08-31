//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Angel Ricardo Solsona Nevero on 24/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let alert = UIAlertController(title: "Hola", message: "Mensaje", preferredStyle: .alert)
        
        let actionok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(actionok)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToRed(unwindSegue:UIStoryboardSegue){
        
    }

}

