//
//  EnumDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import AST

extension EnumDeclaration {
    
    var nestedContainers: [NestedContainer] {
        return [.init(
            accessLevel: accessLevelModifier.accessLevel,
            container: Enumeration(
                name: name.textDescription,
                convertiblesToRelationships:
                members.declarations.convertiblesToRelationships +
                    members.nestedCases)
            )
        ]
    }
    
}
