//
//  FunctionSignatureParameterExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

import AST

extension FunctionSignature.Parameter {
    
    var functionParameter: FunctionParameter {
        return .init(
            name: externalName ?? localName,
            type: String(describing: typeAnnotation.type)
        )
    }
    
}
