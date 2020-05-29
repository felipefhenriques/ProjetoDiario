//
//  ListaNotas.swift
//  Notes
//
//  Created by Felipe Ferreira on 28/05/20.
//  Copyright © 2020 Felipe Ferreira. All rights reserved.
//

import Foundation
import UIKit

class ListaNotas: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var outletNovaNota: UIButton!
    @IBOutlet weak var tabela: UITableView!
    var notas: [(title: String, note: String)] = []
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        outletNovaNota.layer.cornerRadius = 40
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabela.delegate = self
    }
    
    @IBAction func unwind(segue:UIStoryboardSegue) { }
    
    //Tabela
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = notas[indexPath.row].title
        cell.detailTextLabel?.text = notas[indexPath.row].note
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //Mostrar controller
        guard let tela = storyboard?.instantiateViewController(identifier: "nota") as? NotaDiaria else {
            return
        }
        tela.title = "Nota"
        navigationController?.pushViewController(tela, animated: true)
    }
    
}
