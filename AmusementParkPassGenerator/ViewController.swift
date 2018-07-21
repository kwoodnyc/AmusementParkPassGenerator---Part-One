//
//  ViewController.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-18-07.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
/*      Test Case #1 - Demonstrate birthday if testing for July 20, double swiping and access

                do {
            let entrant = try ClassicGuest(day: 20, month: 07, year: 2018)           Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.allRides)            Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.skipLines)
       } catch let error as DataError {
        print(error.localizedDescription)
       } catch {
           fatalError()
        }
         
 */


/*          Test Case #2 - Child account
        
       do {
            let entrant = try ChildGuest(day: 20, month: 07, year: 2014)
           Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.allRides)
        } catch DataError.overAgeOfFive {
            print("You are too old for this account.")
        } catch {
            fatalError()
        }
 
 */
        
        /* Test Case #3 - Too old for child account
        
        do {
            let entrant = try ChildGuest(day: 20, month: 12, year: 2006)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.allRides)
       } catch DataError.overAgeOfFive {
           print("You are too old for this account.")
        } catch {
            fatalError()
       }
 
*/
        /* Test Case #4 - Testing all rides for VIP vs non-VIP
        
        do {
            let entrant = try ClassicGuest(day: 06, month: 05, year: 2006)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.skipLines)
       } catch DataError.overAgeOfFive {
            print("You are too old for this account.")
        } catch {
            fatalError()
        }

        do {
            let entrant = try VIPGuest(day: 06, month: 05, year: 2006)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.skipLines)
        } catch DataError.overAgeOfFive {
            print("You are too old for this account.")
        } catch {
            fatalError()
        }
*/

        /* Test Case #5 - Missing name and skip lines test
        
        do {
            let address = try Address(streetAddress: "Test Address", city: "Brooklyn", state: "NY", zipCode: "11231")
            let name = try Name(firstName: "Test", lastName: "Case")
            let entrant = HourlyEmployeeFood(name: name, birthday: Date(), address: address)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.skipLines)
        } catch DataError.missingInformation(let missing) {
            print("You are missing \(missing).")
        } catch {
            fatalError()
       }
 */
        
 /*       Test Case #6 - Test food access
        
        do {
           let address = try Address(streetAddress: "Test Address", city: "Brooklyn", state: "NY", zipCode: "11231")
            let name = try Name(firstName: "Test", lastName: "Case")
            let entrant = HourlyEmployeeFood(name: name, birthday: Date(), address: address)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: AreaAccess.kitchen)
        } catch DataError.missingInformation(let missing) {
            print("You are missing \(missing).")
        } catch {
            fatalError()
        }
 
 */
 
        
        /* Test Case #7 - Test manager with missing city
        
        do {
            let address = try Address(streetAddress: "Test Address", city: "", state: "NY", zipCode: "11231")
            let name = try Name(firstName: "Test", lastName: "Case")
            let entrant = Manager(name: name, birthday: Date(), address: address)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: RideAccess.skipLines)
        } catch DataError.missingInformation(let missing) {
            print("You are missing \(missing).")
        } catch {
            fatalError()
        }
 */
        
/* Test Case #8 - Test manager access
        
        do {
            let address = try Address(streetAddress: "Test Address", city: "Brooklyn", state: "NY", zipCode: "11231")
            let name = try Name(firstName: "Test", lastName: "Case")
            let entrant = Manager(name: name, birthday: Date(), address: address)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: AreaAccess.office)
        } catch DataError.missingInformation(let missing) {
            print("You are missing \(missing).")
        } catch {
            fatalError()
        }
*/
        
/* Test Case #9 - Test discounts
        
        do {
            let address = try Address(streetAddress: "Test Address", city: "Brooklyn", state: "NY", zipCode: "11231")
           let name = try Name(firstName: "Test", lastName: "Case")
            let entrant = HourlyEmployeeFood(name: name, birthday: Date(), address: address)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: DiscountAccess.foodDiscount(discount: -1))
        } catch DataError.missingInformation(let missing) {
        print("You are missing \(missing).")
        } catch {
            fatalError()
        }

        do {
           let entrant = try ClassicGuest(day: 5, month: 5, year: 1991)
            Swiper.processSwipeFor(entrant: entrant, withSwipeType: DiscountAccess.foodDiscount(discount: -1))
        } catch DataError.missingInformation(let missing) {
           print("You are missing \(missing).")
        } catch {
            fatalError()
        }
*/
        
    }
}
 
 

