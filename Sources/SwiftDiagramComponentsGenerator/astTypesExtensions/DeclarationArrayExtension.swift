//
//  DeclarationArrayExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

import AST

extension Array where Element == Declaration {
    
    var convertiblesToRelationships: [ConvertibleToRelationship] {
        return flatMap { $0.convertiblesToRelationships }
    }
    
}
