//
//  NestedFunction.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/23/17.
//

class NestedFunction: ConvertibleToRelationship {
    
    let accessLevel: AccessLevel
    let targetEntity: ConvertibleToEntity
    
    init(accessLevel: AccessLevel,
         function: ConvertibleToEntity & Function) {
        self.accessLevel = accessLevel
        self.targetEntity = function
    }
    
    func createRelationship(
        rootEntityId: Int, targetEntityId: Int) -> Relationship {
        return Relationship(
            rootEntityId: rootEntityId,
            targetEntityId: targetEntityId,
            attributes: ["access level": accessLevel.rawValue])
    }
    
}
