//
//  Named.swift
//  
//
//  Created by Jeremy Bannister on 4/11/23.
//

///
public struct Named <Value> {
    
    ///
    public var name: Name
    
    ///
    public var value: Value
    
    ///
    public init
        (name: Name,
         value: Value) {
        self.name = name
        self.value = value
    }
}
