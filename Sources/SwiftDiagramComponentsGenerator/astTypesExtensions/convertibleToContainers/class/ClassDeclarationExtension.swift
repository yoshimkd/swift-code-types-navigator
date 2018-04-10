//
//  ClassDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import AST

extension ClassDeclaration {
    
    var nestedContainers: [NestedContainer] {
        return [.init(
            accessLevel: accessLevelModifier.accessLevel,
            container: Class(
                name: name.textDescription,
                isFinal: isFinal,
                convertiblesToRelationships:
                members.declarations.convertiblesToRelationships)
            )
        ]
    }
    
}
