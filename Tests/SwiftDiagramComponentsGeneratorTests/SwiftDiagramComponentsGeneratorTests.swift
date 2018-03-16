//
//  Generator.swift
//  SwiftDiagramComponentsGeneratorTests
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import XCTest
import SwiftDiagramComponentsGenerator

final class SwiftDiagramComponentsGeneratorTests: XCTestCase {
    
    func testOneClass() throws {
        let result = Generator.generateSwiftDiagramComponents(
            forSwiftFileAtPath: filePath(forSwiftFileNamed: "OneClass"))
        
        //Entities
        
        let resultEntities = result.entities
        XCTAssertEqual(resultEntities.count, 1)
        
        let resultEntity = resultEntities.first!
        XCTAssertEqual(resultEntity.id, 0)
        XCTAssertEqual(resultEntity.type, "class")
        XCTAssertEqual(resultEntity.name, "A")
        
        //Relationships
        
        let resultRelationships = result.relationships
        XCTAssertEqual(resultRelationships.count, 1)
        
        let resultRelationship = resultRelationships.first!
        XCTAssertEqual(resultRelationship.rootEntityId, -1)
        XCTAssertEqual(resultRelationship.targetEntityId, 0)
        XCTAssertEqual(resultRelationship.attributes, [:])
    }
    
    func testOneStructure() throws {
        let result = Generator.generateSwiftDiagramComponents(
            forSwiftFileAtPath: filePath(forSwiftFileNamed: "OneStructure"))
        
        //Entities
        
        let resultEntities = result.entities
        XCTAssertEqual(resultEntities.count, 1)
        
        let resultEntity = resultEntities.first!
        XCTAssertEqual(resultEntity.id, 0)
        XCTAssertEqual(resultEntity.type, "structure")
        XCTAssertEqual(resultEntity.name, "A")
        
        //Relationships
        
        let resultRelationships = result.relationships
        XCTAssertEqual(resultRelationships.count, 1)
        
        let resultRelationship = resultRelationships.first!
        XCTAssertEqual(resultRelationship.rootEntityId, -1)
        XCTAssertEqual(resultRelationship.targetEntityId, 0)
        XCTAssertEqual(resultRelationship.attributes, [:])
    }
    
    func testOneEnumeration() throws {
        let result = Generator.generateSwiftDiagramComponents(
            forSwiftFileAtPath: filePath(forSwiftFileNamed: "OneEnumeration"))
        
        //Entities
        
        let resultEntities = result.entities
        XCTAssertEqual(resultEntities.count, 1)
        
        let resultEntity = resultEntities.first!
        XCTAssertEqual(resultEntity.id, 0)
        XCTAssertEqual(resultEntity.type, "enumeration")
        XCTAssertEqual(resultEntity.name, "A")
        
        //Relationships
        
        let resultRelationships = result.relationships
        XCTAssertEqual(resultRelationships.count, 1)
        
        let resultRelationship = resultRelationships.first!
        XCTAssertEqual(resultRelationship.rootEntityId, -1)
        XCTAssertEqual(resultRelationship.targetEntityId, 0)
        XCTAssertEqual(resultRelationship.attributes, [:])
    }
    
}
