//
//  ConstantDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import AST

extension ConstantDeclaration {
    
    var nestedProperties: [NestedProperty] {
        return initializerList.flatMap {
            if let identifierPatter = $0.pattern as? IdentifierPattern {
                return .init(
                    accessLevel: modifiers.accessLevelModifier.accessLevel,
                    constant: true,
                    property: identifierPatter.property
                )
            }
            
            return nil
        }
    }
    
}
