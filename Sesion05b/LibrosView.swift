//
//  LibrosView.swift
//  Sesion05b
//
//  Created by Carlos Gabriel Baca Manrique on 12/10/24.
//

import SwiftUI

struct LibrosView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var escritor: Escritor
    
    var body: some View {
        VStack {
            if(escritor.librosArray.isEmpty) {
                Text("No hay libros")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
            } else {
                List {
                    ForEach(escritor.librosArray, id: \.self) { item in
                        Text(item.nombre ?? "Sin nombre")
                    }
                }
            }
        }
        .navigationTitle(escritor.nombre ?? "Escritor")
    }
}
