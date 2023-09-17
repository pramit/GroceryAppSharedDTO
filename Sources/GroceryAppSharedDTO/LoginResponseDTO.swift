//
//  File.swift
//  
//
//  Created by Pramit Rashinkar on 9/17/23.
//

import Foundation

public struct LoginResponseDTO: Codable {
    
    public let error: Bool
    public var reason: String? = nil
    public var token: String? = nil
    public var userId: UUID? = nil
    
    // why set as optional and nil? it's possible login & password are incorrect (and therefore no token)
    
    public init(error: Bool, reason: String? = nil, token: String? = nil, userId: UUID? = nil) {
        self.error = error
        self.reason = reason
        self.token = token
        self.userId = userId
    }
    
}
