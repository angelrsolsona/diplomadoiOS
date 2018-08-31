//
//  ViewController.swift
//  TableView
//
//  Created by Angel Ricardo Solsona Nevero on 25/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nombres = ["Luis", "Pedro", "Juan", "Manuel"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdenfier = "Celda"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdenfier, for: indexPath)
        
        cell.textLabel?.text = nombres[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("presiono \(indexPath.row)")
        let cell =  tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        
        let alert = UIAlertController(title: "Aviso", message: "Hola como estas", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}

