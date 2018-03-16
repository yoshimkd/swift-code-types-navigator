//
//  ShellCommandExecutor.swift
//  SwiftDiagramGenerator
//
//  Created by Jovan Jovanovski on 12/25/17.
//

import Foundation

@discardableResult
func executeShellCommand(arguments: String...) -> Int32 {
    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = arguments
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}
