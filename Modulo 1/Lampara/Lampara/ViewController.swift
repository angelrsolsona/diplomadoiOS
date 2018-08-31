//
//  ViewController.swift
//  Lampara
//
//  Created by Angel Ricardo Solsona Nevero on 17/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isOn:Bool = false
    var timer:Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap = UITapGestureRecognizer(target: self,action: #selector(onOf))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(tap)
        updateUI()
        
        let dobletap = UITapGestureRecognizer(target: self,action: #selector(strobe))
        dobletap.numberOfTapsRequired = 1
        dobletap.numberOfTouchesRequired = 2
        self.view.addGestureRecognizer(dobletap)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeState(){
        isOn = !isOn
        updateUI()
    }
    
    @objc func onOf(){
        timer.invalidate()
        changeState()
    }
    
    @objc func strobe(){
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.changeState()
        }
    }
    
    func updateUI(){
    
        if isOn{
            self.view.backgroundColor = UIColor.white
        }else{
            self.view.backgroundColor = UIColor.black
        }
    }
    


}

