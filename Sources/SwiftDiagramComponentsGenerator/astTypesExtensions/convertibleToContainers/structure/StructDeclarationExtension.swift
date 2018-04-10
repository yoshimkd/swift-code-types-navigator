//
//  StructDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import AST

extension StructDeclaration {
    
    var nestedContainers: [NestedContainer] {
        return [.init(
            accessLevel: accessLevelModifier.accessLevel,
            container: Structure(
                name: name.textDescription,
                convertiblesToRelationships:
                members.declarations.convertiblesToRelationships)
            )
        ]
    }
    
}
