//
//  AccessLevelModifierExtension.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/23/17.
//

import AST

extension AccessLevelModifier {
    
    var accessLevel: AccessLevel {
        switch self {
        case .`private`: return .private
        case .privateSet: return .privateSet
        case .`fileprivate`: return .fileprivate
        case .fileprivateSet: return .fileprivateSet
        case .`internal`: return .internal
        case .internalSet: return .internalSet
        case .`public`: return .public
        case .publicSet: return .publicSet
        case .`open`: return .open
        case .openSet: return .openSet
        }
    }
    
}
