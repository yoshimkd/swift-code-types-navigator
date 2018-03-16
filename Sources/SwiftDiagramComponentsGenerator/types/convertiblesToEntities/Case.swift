//
//  Case.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/26/17.
//

class Case: ConvertibleToEntity {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func createEntity(id: Int) -> Entity {
        return .init(
            id: id,
            type: "case",
            name: name,
            attributes: [:])
    }
    
}
