//
//  Entrant.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-19-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

extension Date {
    static func create(day: Int, month: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        return Calendar.current.date(from: dateComponents)!
    }
}

protocol Swipeable {
    var lastSwipe: Date? { get set }
    
    func swiped()
}

protocol Entrant: Dateable, Swipeable {
    var areaAccess: [AreaAccess] { get }
    var rideAccess: [RideAccess] { get set }
    var discountAccess: [DiscountAccess] { get set }
}

protocol Employee: Entrant, Nameable, Addressable {}
