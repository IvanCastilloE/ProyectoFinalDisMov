//
//  Serie.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Serie {
    var nombre: String
    var genero: String
    var fechaSalida: String
    var temporadas: Int
    var imgSerie: String
    
    var episodios: Int
    var rating: String
    var imgAlt: String
    
    init(nombre: String, genero: String, fechaSalida: String, temporadas: Int, imgSerie: String, episodios: Int, rating: String, imgAlt: String) {
        self.nombre = nombre
        self.genero = genero
        self.fechaSalida = fechaSalida
        self.temporadas = temporadas
        self.imgSerie = imgSerie
        
        self.episodios = episodios
        self.rating = rating
        self.imgAlt = imgAlt
    }
}
