//
//  Escritor.swift
//  Sesion05b
//
//  Created by Carlos Gabriel Baca Manrique on 12/10/24.
//

import Foundation

extension Escritor {
    var librosArray: [Libro] {
        let coleccion = self.libros as? Set<Libro> ?? []
        return coleccion.sorted { (libroA: Libro, libroB: Libro) in
            (libroA.nombre ?? "") < (libroB.nombre ?? "")
        }
    }
}
