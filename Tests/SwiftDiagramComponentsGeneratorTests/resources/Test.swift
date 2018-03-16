//
//  Test.swift
//  SwiftDiagramComponentsGeneratorTests
//
//  Created by Jovan Jovanovski on 12/29/17.
//

open class C {
    
    public enum E {
        
        case a, b
        case c
        
        internal struct S {
            
            var (a, b): (Int, Int)
            
            private let k = 3
            let m: String = ""
            
            fileprivate func f(a: String, b: Bool) -> Float {
                return 0
            }
            
        }
        
        var r: Int {
            return 3
        }
        
    }
    
    let l: Bool
    
    private init(l: Bool) {
        self.l = l
    }
    
}

func f() {}
let l = 2
var s: String = ""
