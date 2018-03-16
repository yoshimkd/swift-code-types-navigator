//
//  main.swift
//  SwiftDiagramGenerator
//
//  Created by Jovan Jovanovski on 12/25/17.
//

import SwiftDiagramComponentsGenerator

let arguments = CommandLine.arguments
let visualizationDirectoryPath = arguments[1] + "/Visualization/"
let fileSystemItemsPaths = Array(arguments[2...])
let swiftFilePaths = FileSystemHelper.getSwiftFilePaths(
    inFileSystemItemPaths: fileSystemItemsPaths)

let result = Generator.generateSwiftDiagramComponents(
    forSwiftFilesAtPaths: swiftFilePaths)
let resultJsonString = jsonString(fromObject: result)

var diagramScriptTemplateFileContents = try! String(contentsOfFile:
    visualizationDirectoryPath + "diagramScriptTemplate")
diagramScriptTemplateFileContents =
    diagramScriptTemplateFileContents.replacingOccurrences(
        of: "$entitiesAndRelationships", with: resultJsonString)
try! diagramScriptTemplateFileContents.write(
    toFile: visualizationDirectoryPath + "diagram.js",
    atomically: false,
    encoding: .utf8)

executeShellCommand(arguments:
    "open", visualizationDirectoryPath + "diagram.html")

print(resultJsonString)
