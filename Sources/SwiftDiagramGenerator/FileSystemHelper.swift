//
//  FileSystemHelper.swift
//  SwiftDiagramGenerator
//
//  Created by Jovan Jovanovski on 12/26/17.
//

import Foundation

struct FileSystemHelper {
    
    static func getSwiftFilePaths(
        inFileSystemItemPaths fileSystemItemPaths: [String]) -> [String] {
        if fileSystemItemPaths.isEmpty {
            return fileSystemItemPaths
        }
        
        return fileSystemItemPaths.flatMap {
            fileSystemItemPath -> [String] in
            if fileSystemItemPath.isDirectory {
                return try! FileManager.default.subpathsOfDirectory(
                    atPath: fileSystemItemPath).filter { $0.isSwiftFile }
                    .map { fileSystemItemPath + "/" + $0 }
            }
            
            return fileSystemItemPath.isSwiftFile ? [fileSystemItemPath] : []
        }
    }
    
}

private extension String {
    
    var isDirectory: Bool {
        var isDirectory = ObjCBool(false)
        return FileManager.default.fileExists(
            atPath: self, isDirectory: &isDirectory) ?
                isDirectory.boolValue : false
    }
    
    var isSwiftFile: Bool {
        return (self as NSString).pathExtension == "swift"
    }
    
}
