//
//  Name+callAsFunction.swift
//  
//
//  Created by Jeremy Bannister on 4/11/23.
//

///
extension Name {
    
    ///
    public func callAsFunction
        <Value>
        (generateValue: ()->Value)
    -> Named<Value> {
        
        ///
        Named<Value>(
            name: self,
            value: generateValue()
        )
    }
}
