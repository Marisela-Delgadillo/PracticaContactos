//
//  Contacto.swift
//  PracticaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Contacto {
    var nombre : String
    var telefono : String
    var contactos: [Contacto]
    
    init(nombre:String, telefono:String, contactos:[Contacto]){
        self.nombre = nombre
        self.telefono = telefono
        self.contactos = contactos
    }
    
}


