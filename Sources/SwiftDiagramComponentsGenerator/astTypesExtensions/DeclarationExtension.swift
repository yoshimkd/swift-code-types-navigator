//
//  DeclarationExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/24/17.
//

import AST

extension Declaration {
    
    var convertiblesToRelationships: [ConvertibleToRelationship] {
        switch self {
        case let classDeclaration as ClassDeclaration:
            return classDeclaration.nestedContainers
        case let structDeclaration as StructDeclaration:
            return structDeclaration.nestedContainers
        case let enumDeclaration as EnumDeclaration:
            return enumDeclaration.nestedContainers
        case let protocolDeclaration as ProtocolDeclaration:
            return protocolDeclaration.nestedContainers
        case let constantDeclaration as ConstantDeclaration:
            return constantDeclaration.nestedProperties
        case let variableDeclaration as VariableDeclaration:
            return variableDeclaration.nestedProperties
        case let functionDeclaration as FunctionDeclaration:
            return [functionDeclaration.nestedFunction]
        default:
            return []
        }
    }
    
}
