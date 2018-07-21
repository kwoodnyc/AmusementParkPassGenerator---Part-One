//
//  DataError.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher on 2018-20-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

enum DataError: Error {
    case missingInformation(missing: String)
    case overAgeOfFive
}
