//
//  IdentifierPatternExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

import AST

extension IdentifierPattern {
    
    var property: Property {
        return .init(
            name: identifier.textDescription,
            type: typeAnnotation.map { String(describing: $0.type) }
        )
    }
    
}
