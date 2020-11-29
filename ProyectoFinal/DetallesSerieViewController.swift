//
//  DetallesSerieViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class DetallesSerieViewController: UIViewController {
    var serie: Serie?
    
    @IBOutlet weak var imgSerie: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblTemporadas: UILabel!
    @IBOutlet weak var lblEpisodios: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if serie != nil {
            lblTitulo.text = serie?.nombre
            lblTemporadas.text = "\(serie!.temporadas) temporadas"
            lblEpisodios.text = "\(serie!.episodios) episodios"
            lblRating.text = "\(serie!.rating) - IMDb"
            imgSerie.image = UIImage(named: serie!.imgAlt)
        }
    }
}
