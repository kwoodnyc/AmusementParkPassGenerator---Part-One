//
//  Manager.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-19-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

class Manager: Employee {
    var lastSwipe: Date?
    
    let name: Name
    let birthday: Date
    let address: Address
    
    var areaAccess: [AreaAccess] = [
        .amusement,
        .kitchen,
        .rideControl,
        .maintenance,
        .office
    ]
    
    var rideAccess: [RideAccess] = [
        .allRides
    ]
    
    var discountAccess: [DiscountAccess] = [
        .foodDiscount(discount: 25),
        .merchandiseDiscount(discount: 25)
    ]
    
    init(name: Name, birthday: Date, address: Address) {
        self.name = name
        self.birthday = birthday
        self.address = address
    }
    
    func swiped() {
        lastSwipe = Date()
    }
}
