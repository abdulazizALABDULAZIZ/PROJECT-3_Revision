//
//  moviesStore+Extension.swift
//  Project_3
//
//  Created by MACBOOK on 26/04/1443 AH.
//

import Foundation
import UIKit

extension MoviesStore {
    
    
    func getPriceFor(movieWith uid:String) -> Double? {
        
        for movie in self.movies {
            if movie.uid == uid {
                
                return movie.price
            }
        }
        
        return nil
    }
    
    
}
