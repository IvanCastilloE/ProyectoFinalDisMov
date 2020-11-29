//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let id = "celdaPelicula"
    var peliculas: [Pelicula] = []
    @IBOutlet weak var tvPeliculas: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! PeliculaViewController
        destino.pelicula = peliculas[tvPeliculas.indexPathForSelectedRow!.row]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: id) as! PeliculaCell
        let pelicula = peliculas[indexPath.row]
        
        celda.lblTitulo.text = pelicula.titulo
        celda.lblDirector.text = pelicula.director
        celda.lblFechaSalida.text = pelicula.fechaSalida
        celda.lblDuracion.text = pelicula.duracion
        celda.imgPelicula.image = UIImage(named: pelicula.imgPelicula)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "The Shining", director: "Stanley Kubrick", fechaSalida: "1980", duracion: "2h 26m", imgPelicula: "the shining", genero: "Terror/Misterio", presupuesto: "$19 millones", imgAlt: "the shining2"))
        peliculas.append(Pelicula(titulo: "A Clockwork Orange", director: "Stanley Kubrick", fechaSalida: "1971", duracion: "2h 17m", imgPelicula: "clockwork orange", genero: "Sci-Fi/Drama", presupuesto: "$2.2 millones", imgAlt: "clockwork orange2"))
        peliculas.append(Pelicula(titulo: "2001: A Space Odyssey", director: "Stanley Kubrick", fechaSalida: "2001", duracion: "2h 44m", imgPelicula: "space odyssey", genero: "Sci-Fi/Aventura", presupuesto: "$10.5-12 millones", imgAlt: "space odyssey2"))
        peliculas.append(Pelicula(titulo: "Taxi Driver", director: "Martin Scorsese", fechaSalida: "1976", duracion: "1h 54m", imgPelicula: "taxi driver", genero: "Crimen/Drama", presupuesto: "$1.9 millones", imgAlt: "taxi driver2"))
        peliculas.append(Pelicula(titulo: "Pulp Fiction", director: "Quentin Tarantino", fechaSalida: "1994", duracion: "2h 58m", imgPelicula: "pulp fiction", genero: "Crimen/Drama", presupuesto: "$8-8.5 millones", imgAlt: "pulp fiction2"))
        peliculas.append(Pelicula(titulo: "Django Unchained", director: "Quentin Tarantino", fechaSalida: "2012", duracion: "2h 45m", imgPelicula: "django", genero: "Western/Drama", presupuesto: "$100 millones", imgAlt: "django2"))
        peliculas.append(Pelicula(titulo: "Requiem for a Dream", director: "Darren Aronofsky", fechaSalida: "2000", duracion: "1h 50m", imgPelicula: "requiem", genero: "Drama psicológico", presupuesto: "$4.5 millones", imgAlt: "requiem2"))
        peliculas.append(Pelicula(titulo: "Midsommar", director: "Ari Aster", fechaSalida: "2019", duracion: "2h 18m", imgPelicula: "midsommar", genero: "Terror/Drama", presupuesto: "$9 millones", imgAlt: "midsommar2"))
        peliculas.append(Pelicula(titulo: "Blade Runner", director: "Ridley Scott", fechaSalida: "1982", duracion: "1h 57m", imgPelicula: "blade runner", genero: "Sci-Fi/Accion", presupuesto: "$30 millones", imgAlt: "blade runner2"))
        peliculas.append(Pelicula(titulo: "Star Wars: The Empire Strikes Back", director: "Irvin Kershner", fechaSalida: "1980", duracion: "2h 7m", imgPelicula: "star wars esb", genero: "Sci-Fi/Aventura", presupuesto: "$33 millones", imgAlt: "star wars esb2"))
    }
}

