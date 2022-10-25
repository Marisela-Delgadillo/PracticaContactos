//
//  ViewController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contactos : [Contacto] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
            celda.lblNombre.text = contactos[indexPath.row].nombre
            celda.lblTelefono.text = contactos[indexPath.row].telefono
        return celda
        
    }
    
    @IBOutlet weak var tvContactos: UITableView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contactos.append(Contacto(nombre: "Marisela", telefono: "6441144560"))
        contactos.append(Contacto(nombre: "Azalia", telefono: "6441545187"))
        contactos.append(Contacto(nombre: "Armando", telefono: "6441964592"))
        contactos.append(Contacto(nombre: "Danna", telefono: "6444203496"))
        contactos.append(Contacto(nombre: "Cesar", telefono: "6444623977"))
        contactos.append(Contacto(nombre: "Mamá", telefono: "6441298477"))
        contactos.append(Contacto(nombre: "Papá", telefono: "6441012512"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destino = segue.destination as! EditarController
        destino.callBackActualizar = actualizarContacto
    }
    
    //func actualizarContacto(nombre: String)


}

