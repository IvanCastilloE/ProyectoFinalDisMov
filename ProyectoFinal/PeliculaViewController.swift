//
//  PeliculaViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class PeliculaViewController: UIViewController {
    var pelicula: Pelicula?
    
    @IBOutlet weak var imgPelicula: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblPresupuesto: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if pelicula != nil {
            lblTitulo.text = pelicula?.titulo
            lblGenero.text = pelicula?.genero
            lblPresupuesto.text = "Presupuesto: \(pelicula!.presupuesto)"
            imgPelicula.image = UIImage(named: pelicula!.imgAlt)
        }
    }
}
