//
//  EnumDeclarationMemberExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

import AST

extension EnumDeclaration.Member {
    
    var declaration: Declaration? {
        if case .declaration(let declaration) = self {
            return declaration
        }
        return nil
    }
    
    var nestedCases: [NestedCase] {
        if case .union(let unionStyleEnumCase) = self {
            return unionStyleEnumCase.cases.map {
                NestedCase(case: Case(name: $0.name.textDescription))
            }
        }
        return []
    }
    
}
