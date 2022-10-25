//
//  EditarController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/25/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EditarController : UIViewController {
    
    var contacto : Contacto?
    var nombre : String?
    var telefono : String?
    var callBackActualizar : ((Contacto) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contacto != nil {
            txtNombre.text = contacto!.nombre
            txtTelefono.text = contacto!.telefono
        }
        
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callBackActualizar != nil {
            contacto?.nombre = txtNombre.text!
            contacto?.telefono = txtTelefono.text!
            callBackActualizar!(contacto!)
            self.navigationController?.popViewController(animated: true)
        }
       
    }
    
}
