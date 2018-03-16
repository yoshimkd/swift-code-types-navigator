//
//  JsonPrinter.swift
//  SwiftDiagramGenerator
//
//  Created by Jovan Jovanovski on 12/20/17.
//

import Foundation

func jsonString<EncodableType: Encodable>(
    fromObject object: EncodableType) -> String {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    return String(data: try! encoder.encode(object), encoding: .utf8)!
}
