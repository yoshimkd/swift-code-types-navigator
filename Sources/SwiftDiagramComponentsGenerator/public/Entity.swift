//
//  Entity.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

public struct Entity: Encodable {
    
    public let id: Int
    public let type: String
    public let name: String
    public let attributes: [String: String]
    
}
