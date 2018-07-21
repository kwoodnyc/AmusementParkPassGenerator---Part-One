//
//  Guest.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-19-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

class ClassicGuest: Entrant {
    var lastSwipe: Date?
    
    let birthday: Date
    
    let areaAccess: [AreaAccess]
    var rideAccess: [RideAccess]
    var discountAccess: [DiscountAccess]
    
    init(birthday: Date) throws {
        self.birthday = birthday
        
        areaAccess = [.amusement]
        rideAccess = [.allRides]
        discountAccess = []
    }
    
    convenience init (day: Int, month: Int, year: Int) throws {
        let createdBirthday = Date.create(day: day, month: month, year: year)
        
        try! self.init(birthday: createdBirthday)
    }
    
    func swiped() {
        lastSwipe = Date()
    }
}

class VIPGuest: ClassicGuest {
    init(day: Int, month: Int, year: Int) throws {
        let createdBirthday = Date.create(day: day, month: month, year: year)
        try! super.init(birthday: createdBirthday)
        
        rideAccess = [
            .allRides,
            .skipLines
        ]
        
        discountAccess = [
            .foodDiscount(discount: 10),
            .merchandiseDiscount(discount: 20)
        ]
    }
}

class ChildGuest: ClassicGuest {
    init(day: Int, month: Int, year: Int) throws {
        let createdBirthday = Date.create(day: day, month: month, year: year)
        try! super.init(birthday: createdBirthday)
     
        if !isUnderFive() {
            throw DataError.overAgeOfFive
        }
    }
}
