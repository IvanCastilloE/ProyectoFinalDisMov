//
//  SeriesViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class SeriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvSeries: UITableView!
    
    let id = "celdaSerie"
    var series: [Serie] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesSerieViewController
        destino.serie = series[tvSeries.indexPathForSelectedRow!.row]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return series.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: id) as! SerieCell
        let serie = series[indexPath.row]
        
        celda.lblTitulo.text = serie.nombre
        celda.lblGenero.text = serie.genero
        celda.lblFechaSalida.text = serie.fechaSalida
        celda.lblTemporadas.text = "\(serie.temporadas) temporadas"
        celda.imgSerie.image = UIImage(named: serie.imgSerie)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        series.append(Serie(nombre: "Game of Thrones", genero: "Drama", fechaSalida: "2011", temporadas: 8, imgSerie: "got", episodios: 73, rating: "9.3/10", imgAlt: "got2"))
        series.append(Serie(nombre: "Dark", genero: "Misterio", fechaSalida: "2017", temporadas: 3, imgSerie: "dark", episodios: 26, rating: "8.8/10", imgAlt: "dark2"))
        series.append(Serie(nombre: "Breaking Bad", genero: "Crimen", fechaSalida: "2008", temporadas: 5, imgSerie: "breaking bad", episodios: 62, rating: "9.5/10", imgAlt: "breaking bad2"))
        series.append(Serie(nombre: "Black Mirror", genero: "Sci-fi", fechaSalida: "2011", temporadas: 5, imgSerie: "black mirror", episodios: 22, rating: "8.8/10", imgAlt: "black mirror2"))
        series.append(Serie(nombre: "Stranger Things", genero: "Terror", fechaSalida: "2016", temporadas: 3, imgSerie: "stranger things", episodios: 25, rating: "8.8/10", imgAlt: "stranger things2"))
        series.append(Serie(nombre: "Narcos", genero: "Crimen", fechaSalida: "2015", temporadas: 3, imgSerie: "narcos", episodios: 30, rating: "8.8/10", imgAlt: "narcos2"))
        series.append(Serie(nombre: "House of Cards", genero: "Drama", fechaSalida: "2013", temporadas: 6, imgSerie: "house of cards", episodios: 73, rating: "8.7/10", imgAlt: "house of cards2"))
        series.append(Serie(nombre: "The Waling Dead", genero: "Terror", fechaSalida: "2010", temporadas: 10, imgSerie: "twd", episodios: 147, rating: "8.2/10", imgAlt: "twd2"))
        series.append(Serie(nombre: "Orange is the New Black", genero: "Drama", fechaSalida: "2013", temporadas: 7, imgSerie: "oitnb", episodios: 91, rating: "8.1/10", imgAlt: "oitnb2"))
        series.append(Serie(nombre: "The Mandalorian", genero: "Sci-fi", fechaSalida: "2019", temporadas: 2, imgSerie: "mandalorian", episodios: 11, rating: "8.7/10", imgAlt: "mandalorian2"))
    }
}
