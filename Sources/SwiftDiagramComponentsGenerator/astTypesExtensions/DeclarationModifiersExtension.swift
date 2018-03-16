//
//  DeclarationModifiersExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

import AST

extension Array where Element == DeclarationModifier {
    
    var accessLevelModifier: AccessLevelModifier? {
        for modifier in self {
            if case .accessLevel(let declaredAccessLevelModifier) = modifier {
                return declaredAccessLevelModifier
            }
        }
        
        return nil
    }
    
}
