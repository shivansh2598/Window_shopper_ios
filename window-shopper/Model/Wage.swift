//
//  Wage.swift
//  window-shopper
//
//  Created by Shivansh Sinha on 05/07/21.
//

import Foundation

class Wage {
    class func getHours(forWage wage : Double, andPrice price : Double) -> Int {
        return Int(ceil(price/wage))    //Ceil rounds the number but doesnt change the type to int. 
    }
}
