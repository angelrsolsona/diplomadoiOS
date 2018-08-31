//
//  ViewController.swift
//  RPS
//
//  Created by Angel Ricardo Solsona Nevero on 11/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    @IBOutlet weak var machineSign: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var signRockButtom: UIButton!
    @IBOutlet weak var signPaperButtom: UIButton!
    @IBOutlet weak var signScissorsButtom: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var gameStatus: GameState = .start
    
    let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    
    func randomSign() -> Sign {
        let sign = randomChoice.nextInt()
        var data:Sign = .rock
        if sign == 0 {
            data = .rock
        }else if sign == 0 {
            data = .paper
        }else{
            data = .scissors
        }
        
        return data
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func updateUI(){
        
        if gameStatus == .start{
            signRockButtom.isHidden = false
            signPaperButtom.isHidden = false
            signScissorsButtom.isHidden = false
            resultLabel.isHidden = false
            resultLabel.text = gameStatus.texto
            machineSign.titleLabel?.text = "🤖"
            resetButton.isHidden = true
            self.view.backgroundColor = UIColor.white
            enableButtons(enable: true)
            
        }else{
            hidenButtons()
            resetButton.isHidden = false
            resultLabel.text = gameStatus.texto
            switch gameStatus{
                case .won:
                    self.view.backgroundColor = UIColor.green
                case .draw:
                    self.view.backgroundColor = UIColor.brown
                case .lose:
                    self.view.backgroundColor = UIColor.red
                default:
                    self.view.backgroundColor = UIColor.white
            }
            
            enableButtons(enable: false)
        }
        
    }
    
    func hidenButtons() {
        
        signRockButtom.isHidden = true
        signPaperButtom.isHidden = true
        signScissorsButtom.isHidden = true
        
    }
    
    func enableButtons(enable:Bool){
        signRockButtom.isEnabled = enable
        signPaperButtom.isEnabled = enable
        signScissorsButtom.isEnabled = enable
    }
    
    @IBAction func selectSign(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            play(sign: .rock, button: sender)
        case 2:
            play(sign: .paper, button: sender)
        case 3:
            play(sign: .scissors, button: sender)
        default:
            break
        }
        
    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
        gameStatus = .start
        updateUI()
    }
    
    func play(sign:Sign, button: UIButton){
        
        let machineSign = randomSign()
        gameStatus = sign.compare(machineSign)
        updateUI()
        self.machineSign.titleLabel?.text = machineSign.emoji
        hidenButtons()
        button.isHidden = false
        
    }
    
    
    


}

