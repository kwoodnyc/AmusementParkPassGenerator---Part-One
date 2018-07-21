//
//  DiscountAccess.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-19-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

typealias Percent = Int

enum DiscountAccess: GenericAccess {
    case foodDiscount(discount: Percent)
    case merchandiseDiscount(discount: Percent)
    
    func stringName() -> String {
        switch self {
        case .foodDiscount(_): return "FoodDiscount"
        case .merchandiseDiscount(_): return "MerchandiseDiscount"
        }
    }
}
