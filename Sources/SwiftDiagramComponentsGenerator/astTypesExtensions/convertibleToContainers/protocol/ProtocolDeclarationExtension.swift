//
//  ProtocolDeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/27/17.
//

import AST

extension ProtocolDeclaration {
    
    var nestedContainers: [NestedContainer] {
        let convertiblesToRelationships: [ConvertibleToRelationship] =
            members.map {
                switch $0 {
                case .property(let property):
                    return property.nestedProtocolPropertyValue
                default:
                    return NestedProperty(
                        accessLevel: .default,
                        constant: true,
                        property: Property(name: "a", type: ""))
                }
        }
        
        return [.init(
            accessLevel: accessLevelModifier.accessLevel,
            container: Protocol(
                name: name,
                convertiblesToRelationships: convertiblesToRelationships)
            )
        ]
    }
    
}
