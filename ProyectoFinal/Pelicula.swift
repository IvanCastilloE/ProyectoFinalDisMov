//
//  Pelicula.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Pelicula {
    var titulo: String
    var director: String
    var fechaSalida: String
    var duracion: String
    var imgPelicula: String
    
    var genero: String
    var presupuesto: String
    var imgAlt: String
    
    init(titulo: String, director: String, fechaSalida: String, duracion: String, imgPelicula: String, genero: String, presupuesto: String, imgAlt: String) {
        self.titulo = titulo
        self.director = director
        self.fechaSalida = fechaSalida
        self.duracion = duracion
        self.imgPelicula = imgPelicula
        
        self.genero = genero
        self.presupuesto = presupuesto
        self.imgAlt = imgAlt
    }
}
