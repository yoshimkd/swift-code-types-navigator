//
//  ProtocolProperty.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

class ProtocolProperty: ConvertibleToEntity {
    
    let name: String
    let type: String
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
    
    func createEntity(id: Int) -> Entity {
        return .init(
            id: id,
            type: "property",
            name: name,
            attributes: ["type": type])
    }
    
}
