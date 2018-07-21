//
//  HourlyEmployee.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-19-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

class HourlyEmployee: Employee {
    var lastSwipe: Date?
    
    let name: Name
    let birthday: Date
    let address: Address
    
    var areaAccess: [AreaAccess]
    var rideAccess: [RideAccess]
    var discountAccess: [DiscountAccess]
    
    init(name: Name, birthday: Date, address: Address) {
        self.name = name
        self.birthday = birthday
        self.address = address
        
        areaAccess = [
            .amusement
        ]
        
        rideAccess = [
            .allRides
        ]
        
        discountAccess = [
            .foodDiscount(discount: 15),
            .merchandiseDiscount(discount: 25)
        ]
    }
    
    func swiped() {
        lastSwipe = Date()
    }
}

class HourlyEmployeeFood: HourlyEmployee {
    override init(name: Name, birthday: Date, address: Address) {
        super.init(name: name, birthday: birthday, address: address)
        
        areaAccess.append(contentsOf: [
            .kitchen
        ])
    }
}

class HourlyEmployeeRideServices: HourlyEmployee {
    override init(name: Name, birthday: Date, address: Address) {
        super.init(name: name, birthday: birthday, address: address)
        
        areaAccess.append(contentsOf: [
            .rideControl
        ])
    }
}

class HourlyEmployeeMaintenance: HourlyEmployee {
    override init(name: Name, birthday: Date, address: Address) {
        super.init(name: name, birthday: birthday, address: address)
        
        areaAccess.append(contentsOf: [
            .kitchen,
            .rideControl,
            .maintenance,
            .office
        ])
    }
}
