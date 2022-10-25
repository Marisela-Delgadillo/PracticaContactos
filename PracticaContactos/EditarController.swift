//
//  EditarController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/25/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EditarController : UIViewController {
    var nombre : String?
    var callBackActualizar : ((String) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if nombre != nil {
            txtNombre.text = nombre
        }
        
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callBackActualizar != nil {
            callBackActualizar!(txtNombre.text!)
        }
    }
    
}
