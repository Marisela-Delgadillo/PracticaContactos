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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
            celda.lblNombre.text = contactos[indexPath.row].nombre
            celda.lblTelefono.text = contactos[indexPath.row].telefono
        return celda
        
    }
    
    @IBOutlet weak var tvContactos: UITableView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contactos.append(Contacto(nombre: "Marisela", telefono: "6441144560", contactos: <#T##[Contacto]#>))
    }


}

