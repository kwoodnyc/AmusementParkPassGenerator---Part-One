//
//  Address.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-20-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

struct Address {
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: String
    
    init(streetAddress: String, city: String, state: String, zipCode: String) throws {
        if streetAddress.isEmpty {
            throw DataError.missingInformation(missing: "Street Address")
        }
        
        if city.isEmpty {
            throw DataError.missingInformation(missing: "City")
        }
        
        if state.isEmpty {
            throw DataError.missingInformation(missing: "State")
        }
        
        if zipCode.isEmpty {
            throw DataError.missingInformation(missing: "Zip Code")
        }
        
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}
