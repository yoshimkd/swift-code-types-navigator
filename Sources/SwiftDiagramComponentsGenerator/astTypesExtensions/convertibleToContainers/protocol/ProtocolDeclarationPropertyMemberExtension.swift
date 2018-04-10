//
//  ProtocolDeclarationPropertyMemberExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

import AST

extension ProtocolDeclaration.PropertyMember {
    
    var nestedProtocolPropertyValue: NestedProtocolProperty {
        return .init(
            accessLevel: modifiers.accessLevelModifier.accessLevel,
            protocolProperty: ProtocolProperty(
                name: name.textDescription, type: String(describing: typeAnnotation.type))
        )
    }
    
}
