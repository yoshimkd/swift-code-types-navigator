//
//  ConvertibleToRelationship.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/24/17.
//

protocol ConvertibleToRelationship {
    
    var targetEntity: ConvertibleToEntity {get}
    func createRelationship(
        rootEntityId: Int, targetEntityId: Int) -> Relationship
    
}
