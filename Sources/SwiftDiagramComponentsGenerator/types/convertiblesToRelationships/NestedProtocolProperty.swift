//
//  NestedProtocolProperty.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

class NestedProtocolProperty: ConvertibleToRelationship {
    
    let accessLevel: AccessLevel
    let targetEntity: ConvertibleToEntity
    
    init(accessLevel: AccessLevel,
         protocolProperty: ConvertibleToEntity & ProtocolProperty) {
        self.accessLevel = accessLevel
        self.targetEntity = protocolProperty
    }
    
    func createRelationship(
        rootEntityId: Int, targetEntityId: Int) -> Relationship {
        return Relationship(
            rootEntityId: rootEntityId,
            targetEntityId: targetEntityId,
            attributes: ["access level": accessLevel.rawValue])
    }
    
}
