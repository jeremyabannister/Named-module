//
//  Named+conformances.swift
//
//
//  Created by Jeremy Bannister on 11/7/23.
//

///
extension Named: Hashable where Value: Hashable {
    
    ///
    public func hash (into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(value)
    }
}

///
extension Named: Equatable where Value: Equatable {
    
    ///
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.name == rhs.name && lhs.value == rhs.value
    }
}

///
extension Named: Encodable where Value: Encodable {
    
    ///
    public func encode (to encoder: Encoder) throws {
        try Named_Encodable(
            name: name,
            value: value
        )
            .encode(to: encoder)
    }
}

///
fileprivate struct Named_Encodable <Value: Encodable>: Encodable {
    let name: Name
    let value: Value
}

///
extension Named: Decodable where Value: Decodable {
    
    ///
    public init (from decoder: Decoder) throws {
        
        ///
        let decoded =
            try Named_Decodable<Value>(
                from: decoder
            )
        
        ///
        self.init(
            name: decoded.name,
            value: decoded.value
        )
    }
}

///
fileprivate struct Named_Decodable <Value: Decodable>: Decodable {
    let name: Name
    let value: Value
}
