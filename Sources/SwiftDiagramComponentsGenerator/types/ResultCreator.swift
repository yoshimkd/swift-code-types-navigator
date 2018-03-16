//
//  ResultCreator.swift
//  SwiftDiagramComponentsGenerator
//
//  Created by Jovan Jovanovski on 12/24/17.
//

func createResult(container: Container, containerEntityId: Int) -> Result {
    var entities = [Entity]()
    var relationships = [Relationship]()
    
    var nextEntityId = containerEntityId + 1
    
    for convertibleToRelationship in container.convertiblesToRelationships {
        let targetEntity = convertibleToRelationship
            .targetEntity.createEntity(id: nextEntityId)
        entities.append(targetEntity)
        
        relationships.append(convertibleToRelationship
            .createRelationship(rootEntityId: containerEntityId,
                                targetEntityId: nextEntityId))
        
        if let nestedContainer = convertibleToRelationship as? NestedContainer {
            let result = createResult(
                container: nestedContainer.targetEntity as! Container,
                containerEntityId: nextEntityId)
            entities.append(contentsOf: result.entities)
            relationships.append(contentsOf: result.relationships)
            
            if let lastEntityId = result.entities.last?.id {
                nextEntityId = lastEntityId + 1
                continue
            }
        }
        
        nextEntityId += 1
    }
    
    return Result(entities: entities, relationships: relationships)
}
