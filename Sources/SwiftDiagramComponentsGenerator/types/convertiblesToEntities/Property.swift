//
//  Property.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

class Property: ConvertibleToEntity {
    
    let name: String
    let type: String?
    
    init(name: String, type: String?) {
        self.name = name
        self.type = type
    }
    
    func createEntity(id: Int) -> Entity {
        var attributes = [String: String]()
        if let type = type {
            attributes["type"] = type
        }
        
        return .init(
            id: id,
            type: "property",
            name: name,
            attributes: attributes)
    }
    
}
