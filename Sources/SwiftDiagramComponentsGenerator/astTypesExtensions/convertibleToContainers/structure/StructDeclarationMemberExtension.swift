//
//  StructDeclarationMemberExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

import AST

extension StructDeclaration.Member {
    
    var declaration: Declaration? {
        if case .declaration(let declaration) = self {
            return declaration
        }
        return nil
    }
    
}
