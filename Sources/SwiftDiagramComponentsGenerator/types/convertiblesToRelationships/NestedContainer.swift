//
//  NestedContainer.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

class NestedContainer: ConvertibleToRelationship {
    
    let accessLevel: AccessLevel
    let targetEntity: ConvertibleToEntity
    
    init(accessLevel: AccessLevel,
         container: ConvertibleToEntity & Container) {
        self.accessLevel = accessLevel
        self.targetEntity = container
    }
    
    func createRelationship(
        rootEntityId: Int, targetEntityId: Int) -> Relationship {
        return Relationship(
            rootEntityId: rootEntityId,
            targetEntityId: targetEntityId,
            attributes: ["access level": accessLevel.rawValue])
    }
    
}
