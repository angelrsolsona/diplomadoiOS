//
//  ViewController.swift
//  Camera
//
//  Created by Angel Ricardo Solsona Nevero on 25/08/18.
//  Copyright © 2018 Angel Ricardo Solsona Nevero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func takePhoto(_ sender: Any) {
        
        let imagePiker = UIImagePickerController()
        imagePiker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("Camara disponible")
        }else{
            imagePiker.sourceType = .photoLibrary
            present(imagePiker, animated: true, completion: nil)
            
        }
        
    }
}

extension ViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("foto seleccionada")
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            foto.image = selectedImage
            dismiss(animated: true, completion: nil)
        }
    }
    
}

