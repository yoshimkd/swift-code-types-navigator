//
//  AccessLevelModifierOptionalExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

import AST

extension Optional where Wrapped == AccessLevelModifier {
    
    var accessLevel: AccessLevel {
        return self?.accessLevel ?? .default
    }
    
}
