//
//  ViewController.swift
//  Notes
//
//  Created by Felipe Ferreira on 20/05/20.
//  Copyright © 2020 Felipe Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoProx: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }


}

