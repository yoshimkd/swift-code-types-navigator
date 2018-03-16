//
//  Class.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

class Class: Container, ConvertibleToEntity {
    
    let name: String
    let isFinal: Bool
    let convertiblesToRelationships: [ConvertibleToRelationship]
    
    init(name: String,
         isFinal: Bool,
         convertiblesToRelationships: [ConvertibleToRelationship]) {
        self.name = name
        self.isFinal = isFinal
        self.convertiblesToRelationships = convertiblesToRelationships
    }
    
    func createEntity(id: Int) -> Entity {
        return .init(
            id: id,
            type: "class",
            name: name,
            attributes: ["isFinal": isFinal ? "true" : "false"])
    }
    
}
