//
//  Generator.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import Parser
import Source
import AST

public struct Generator {
    
    public static func generateSwiftDiagramComponents(
        forSwiftFilesAtPaths filePaths: [String]) -> Result {
        let convertiblesToRelationships = filePaths.flatMap {
            filePath -> [ConvertibleToRelationship] in
            let sourceFile = try! SourceReader.read(at: filePath)
            let parser = Parser(source: sourceFile)
            
            do {
                let topLevelDeclaration = try parser.parse()
                return topLevelDeclaration.statements.declarations
                    .convertiblesToRelationships
            } catch {
                print("Can't parse file path: " + filePath)
            }
            
            return []
        }
        
        return createResult(
            container: TopLevelContainer(
                convertiblesToRelationships: convertiblesToRelationships),
            containerEntityId: -1)
    }
    
}
