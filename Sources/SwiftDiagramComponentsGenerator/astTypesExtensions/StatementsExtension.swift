//
//  StatementsExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

import AST

extension Array where Element == Statement {
    
    var declarations: [Declaration] {
        return compactMap { $0 as? Declaration }
    }
    
}
