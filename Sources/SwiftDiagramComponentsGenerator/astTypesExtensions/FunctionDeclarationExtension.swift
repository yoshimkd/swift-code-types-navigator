//
//  FunctionDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/23/17.
//

import AST

extension FunctionDeclaration {
    
    var nestedFunction: NestedFunction {
        return .init(
            accessLevel: modifiers.accessLevelModifier.accessLevel,
            function: Function(
                name: name.textDescription,
                parameters: signature.parameterList.map
                    { $0.functionParameter },
                resultType: signature.result.map
                    { String(describing: $0.type) }
            )
        )
    }
    
}
