//
//  Relationship.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

public struct Relationship: Encodable {
    
    public let rootEntityId: Int
    public let targetEntityId: Int
    public let attributes: [String: String]
    
}
