//
//  Helpers.swift
//  SwiftDiagramComponentsGeneratorTests
//
//  Created by Jovan Jovanovski on 12/21/17.
//

import SwiftDiagramComponentsGenerator
import Foundation

func filePath(forSwiftFileNamed swiftFileName: String) -> String {
    return Bundle(for: SwiftDiagramComponentsGeneratorTests.self).path(
        forResource: swiftFileName, ofType: "swift")!
}

extension Entity: Equatable {
    
    public static func == (entity1: Entity, entity2: Entity) -> Bool {
        return entity1.id == entity2.id &&
            entity1.type == entity2.type &&
            entity1.name == entity2.name
    }
    
}

extension Relationship: Equatable {
    
    public static func == (
        relationship1: Relationship, relationship2: Relationship) -> Bool {
        return relationship1.rootEntityId == relationship2.rootEntityId &&
            relationship1.targetEntityId == relationship2.targetEntityId &&
            relationship1.attributes == relationship2.attributes
    }
    
}
