//
//  Cadastro.swift
//  Notes
//
//  Created by Felipe Ferreira on 26/05/20.
//  Copyright © 2020 Felipe Ferreira. All rights reserved.
//

import Foundation
import UIKit

class CadastroSenha: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var outletProx: UIButton!
    
    
    
    override func viewDidLoad() {
        txtSenha.delegate = self
        viewWillDisappear(true)
        txtSenha.layer.cornerRadius = 28
        defineBotao(botao: outletProx)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func defineBotao(botao:UIButton){
        botao.layer.cornerRadius = 30
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func verificaSenha(txtField: UITextField, lblAviso: UILabel){
        if txtField.text!.count < 4 {
            
        }
    }
    
}

class CadastroPerguntas: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var txtNomeMae: UITextField!
    @IBOutlet weak var txtAmigo: UITextField!
    @IBOutlet weak var txtCidade: UITextField!
    @IBOutlet weak var txtPet: UITextField!
    @IBOutlet weak var txtSigno: UITextField!
    @IBOutlet weak var outletProx: UIButton!
    
    
    
    override func viewDidLoad() {
        formataField(field: txtNomeMae)
        formataField(field: txtAmigo)
        formataField(field: txtPet)
        formataField(field: txtCidade)
        formataField(field: txtSigno)
        defineBotao(botao: outletProx)
        txtNomeMae.delegate = self
        txtAmigo.delegate = self
        txtCidade.delegate = self
        txtPet.delegate = self
        txtSigno.delegate = self
    }
    
    func formataField(field:UITextField){
        field.layer.cornerRadius = 28
    }
    
    func defineBotao(botao:UIButton){
        botao.layer.cornerRadius = 30
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}


