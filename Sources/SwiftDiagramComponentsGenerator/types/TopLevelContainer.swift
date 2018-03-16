//
//  TopLevelContainer.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

class TopLevelContainer: Container {
    
    let convertiblesToRelationships: [ConvertibleToRelationship]
    
    init(convertiblesToRelationships: [ConvertibleToRelationship]) {
        self.convertiblesToRelationships = convertiblesToRelationships
    }
    
}
