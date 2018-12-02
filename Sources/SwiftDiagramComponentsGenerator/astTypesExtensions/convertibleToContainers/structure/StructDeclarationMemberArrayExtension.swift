//
//  StructDeclarationMemberArrayExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

import AST

extension Array where Element == StructDeclaration.Member {
    
    var declarations: [Declaration] {
        return compactMap { $0.declaration }
    }
    
}
