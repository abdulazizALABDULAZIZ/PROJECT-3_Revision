//
//  moviesStore.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import Foundation
import UIKit

protocol AzMovies {
    
    var bookTickets:String { get set }
    var watchTriler:String  { get set }

}


struct Movie:AzMovies {
    
    var bookTickets: String
    var watchTriler: String
    
    var uid:String
    var title:String
    var price:Double
    var image:UIImage
}

class MoviesStore {
    
    var movies:[Movie] = [
        Movie(bookTickets: "", watchTriler: "", uid: "GodFather", title: "GodFather", price: 80.99, image: UIImage(named: "GodFatherPoster")!),
        Movie(bookTickets: "", watchTriler: "", uid: "GoodFellas", title: "GoodFellas", price: 98.99, image:UIImage(named: "GoodFellas")!),
        Movie(bookTickets: "", watchTriler: "", uid: "", title: "WolfStreetPoster", price: 90.99, image: UIImage(named: "WolfStreetPoster")!)
    ]

}
