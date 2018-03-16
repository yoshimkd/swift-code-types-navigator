//
//  Protocol.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

class Protocol: Container, ConvertibleToEntity {
    
    let name: String
    let convertiblesToRelationships: [ConvertibleToRelationship]
    
    init(name: String,
         convertiblesToRelationships: [ConvertibleToRelationship]) {
        self.name = name
        self.convertiblesToRelationships = convertiblesToRelationships
    }
    
    func createEntity(id: Int) -> Entity {
        return .init(id: id, type: "protocol", name: name, attributes: [:])
    }
    
}
