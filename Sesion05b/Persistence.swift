//
//  Persistence.swift
//  Sesion05b
//
//  Created by Asuma Toki on 12/10/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    var container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Sesion05b")
        container.loadPersistentStores {_, error in
            if let e = error as NSError? {
                fatalError("Error al contectarse a la BD, \(e)")
            }
        }
    }
}
