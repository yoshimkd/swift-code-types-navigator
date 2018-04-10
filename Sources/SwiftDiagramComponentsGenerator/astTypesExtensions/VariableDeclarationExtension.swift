//
//  VariableDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/23/17.
//

import AST

extension VariableDeclaration {
    
    var nestedProperties: [NestedProperty] {
        switch body {
        case .initializerList(let initializerList):
            return initializerList.compactMap {
                if let identifierPatter = $0.pattern as? IdentifierPattern {
                    return .init(
                        accessLevel: modifiers.accessLevelModifier.accessLevel,
                        constant: false,
                        property: identifierPatter.property
                    )
                }
                
                return nil
            }
        default:
            return []
        }
    }
    
}
