//
//  Calculator.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import Foundation

class Calculator {
    
    var totalBeforeTax:Double
    var shippingCost:Double
    var total:Double
    
    private var taxPercentage:Double
    
    init(totalBeforeTax:Double,shippingCost:Double,total:Double,taxPercentage:Double){
        
        self.totalBeforeTax = totalBeforeTax
        self.shippingCost = shippingCost
        self.total = 0.0
        self.taxPercentage = 0.15
    }
    
    func getTotalAmount()->Double{
        let tax = totalBeforeTax * 0.15
        self.total = totalBeforeTax + tax + shippingCost
        
        return self.total
    }
}
