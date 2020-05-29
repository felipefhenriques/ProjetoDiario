//
//  Diario.swift
//  Notes
//
//  Created by Felipe Ferreira on 28/05/20.
//  Copyright © 2020 Felipe Ferreira. All rights reserved.
//

import Foundation
import UIKit

class NotaDiaria: UIViewController, UITextViewDelegate{
    @IBOutlet weak var viewComoFoi: UIView!
    @IBOutlet weak var fieldNota: UITextView!
    @IBOutlet weak var outletAdicionar: UIButton!
    @IBOutlet weak var dataAtual: UILabel!
    var defaults: UserDefaults = UserDefaults()
    
    
    override func viewDidLoad() {
        viewComoFoi.layer.cornerRadius = 50
        fieldNota.layer.cornerRadius = 50
        fieldNota.textContainerInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        outletAdicionar.layer.cornerRadius = 40
        defineData(label: dataAtual)
        fieldNota.delegate = self
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func defineData(label: UILabel){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyy"
        label.text = formatter.string(from: date)
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
    @IBAction func bttAdicionar(_ sender: UIButton) {
        
    }
    
    
    
}
