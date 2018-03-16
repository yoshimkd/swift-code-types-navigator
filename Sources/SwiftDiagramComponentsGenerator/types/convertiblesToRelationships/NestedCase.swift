//
//  NestedCase.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/26/17.
//

class NestedCase: ConvertibleToRelationship {
    
    let targetEntity: ConvertibleToEntity
    
    init(case: ConvertibleToEntity & Case) {
        self.targetEntity = `case`
    }
    
    func createRelationship(
        rootEntityId: Int, targetEntityId: Int) -> Relationship {
        return Relationship(
            rootEntityId: rootEntityId,
            targetEntityId: targetEntityId,
            attributes: [:])
    }
    
}
