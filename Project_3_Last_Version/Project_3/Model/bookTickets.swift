//
//  bookTickets.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import Foundation

enum TicketType:Double {

    case vip = 0.0
    case premium = 15.5
}

class ShoppingCart {
    var itemStore = MoviesStore()
    var total:Double = 0
    var shippingType:TicketType = .vip
    private var selectedItemsDict: [String:Int] = [:] //[uid - quantity]
    let taxPercentage:Double = 10.00


    func getTotal()->Double{
        //calculate total before tax.
       var totalBeforeTax = 0.0
      for(uid,quantity) in selectedItemsDict{
          if let price = self.itemStore.getPriceFor(movieWith:uid){
      totalBeforeTax += (price * Double(quantity))
}


}
// calling an instance of the calculator inside the shoppingCart.
let calculator = Calculator(totalBeforeTax:totalBeforeTax, shippingCost: shippingType.rawValue, total: total,taxPercentage: taxPercentage)
        return calculator.getTotalAmount()

    }



    func add(item:Movie){

        if var quantity = selectedItemsDict[item.uid]{
            quantity+=1
            selectedItemsDict[item.uid] = quantity
            }else{
            //the item doesn't exist yet.
            selectedItemsDict[item.uid] = 1
        }
    }

    func remove(item:Movie){
        if var quantity = selectedItemsDict[item.uid]{

            quantity-=0
            selectedItemsDict[item.uid] = quantity
        }


    }

    func reset(){ // this is to reset the checkout view

        self.total = 0
        self.shippingType = .vip
        self.selectedItemsDict = [:]
    }
}

