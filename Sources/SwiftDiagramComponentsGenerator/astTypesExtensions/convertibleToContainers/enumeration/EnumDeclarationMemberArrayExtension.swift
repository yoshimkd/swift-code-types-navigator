//
//  EnumDeclarationMemberArrayExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

import AST

extension Array where Element == EnumDeclaration.Member {
    
    var declarations: [Declaration] {
        return compactMap { $0.declaration }
    }
    
    var nestedCases: [NestedCase] {
        return flatMap { $0.nestedCases }
    }
    
}
