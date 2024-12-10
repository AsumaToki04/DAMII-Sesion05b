//
//  ContentView.swift
//  Sesion05b
//
//  Created by Asuma Toki on 12/10/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Escritor.nombre , ascending: true)],
        animation: .default
    ) private var escritores: FetchedResults<Escritor>
    
    var body: some View {
        NavigationView {
            VStack {
                if escritores.isEmpty {
                    Text("No hay escritores")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    ForEach(escritores) { item in
                        HStack {
                            let cantidadDeLibros = item.libros?.count ?? 0
                            Text(item.nombre ?? "Sin nombre")
                            Spacer()
                            Text("\(cantidadDeLibros) libros")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
        .navigationTitle("Escritores")
    }
}
