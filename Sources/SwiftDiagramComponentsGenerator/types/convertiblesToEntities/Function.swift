//
//  Function.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/23/17.
//

class Function: ConvertibleToEntity {
    
    let name: String
    let parameters: [FunctionParameter]
    let resultType: String?
    
    init(name: String, parameters: [FunctionParameter], resultType: String?) {
        self.name = name
        self.parameters = parameters
        self.resultType = resultType
    }
    
    func createEntity(id: Int) -> Entity {
        var attributes = ["parameters": String(describing: parameters)]
        if let resultType = resultType {
            attributes["result type"] = resultType
        }
        
        return .init(
            id: id,
            type: "function",
            name: name,
            attributes: attributes)
    }
    
}
