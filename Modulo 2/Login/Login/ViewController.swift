//
//  ViewController.swift
//  Login
//
//  Created by Angel Ricardo Solsona Nevero on 24/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var viewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.viewContainer.layer.cornerRadius = 10
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let messageWrapper = sender{
            if let messageWrapper1 = messageWrapper as? String{
                print (messageWrapper1)
            }
            let array = messageWrapper as! [String:Any]
            let state = array["message"]
            let message = array["state"]
            
            
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func iniciarSesion(_ sender: Any) {
        var state = 0
        var message = ""
        guard
            let user = userTextField.text,
            let password = passwordTextField.text
        else {
            return
        }
        if user == "angelrsolsona"{
            state += 1
            if password == "123"{
                state += 1
                message = user
            }else{
                message = "password incorrecto"
            }
        }else{
            message = "usuario incorrecto"
        }
        
        let params:[String:Any] = [
            "message":message,
            "state": state
        ]
        
        if state > 1{
            performSegue(withIdentifier: "success_segue", sender: params)
        }else{
            performSegue(withIdentifier: "fail_segue", sender: params)
        }
        
        
    }
    
}

