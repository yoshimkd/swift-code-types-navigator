//
//  FunctionParameter.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/28/17.
//

class FunctionParameter: CustomStringConvertible {
    
    let name: String
    let type: String
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
    
    var description: String {
        return "parameter(name: \(name), type: \(type))"
    }
    
}
