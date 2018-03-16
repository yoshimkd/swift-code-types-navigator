//
//  ConvertibleToEntity.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/24/17.
//

protocol ConvertibleToEntity {
    
    func createEntity(id: Int) -> Entity
    
}
