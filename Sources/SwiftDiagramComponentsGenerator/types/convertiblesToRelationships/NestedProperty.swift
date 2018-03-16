//
//  NestedProperty.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

class NestedProperty: ConvertibleToRelationship {
    
    let accessLevel: AccessLevel
    let constant: Bool
    let targetEntity: ConvertibleToEntity
    
    init(accessLevel: AccessLevel,
         constant: Bool,
         property: ConvertibleToEntity & Property) {
        self.accessLevel = accessLevel
        self.constant = constant
        self.targetEntity = property
    }
    
    func createRelationship(
        rootEntityId: Int, targetEntityId: Int) -> Relationship {
        return Relationship(
            rootEntityId: rootEntityId,
            targetEntityId: targetEntityId,
            attributes: ["access level": accessLevel.rawValue])
    }
    
}
