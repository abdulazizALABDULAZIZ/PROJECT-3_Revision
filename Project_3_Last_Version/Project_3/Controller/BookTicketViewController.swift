//
//  BookTicketViewController.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import UIKit
import SwiftUI
import Foundation

class BookTicketViewController: UIViewController {
    
    @IBOutlet weak var item1ImageView: UIImageView!
    @IBOutlet weak var item1TitleLable: UILabel!
    @IBOutlet weak var item1PriceLable: UILabel!
    @IBOutlet weak var item1Stepper: UIStepper!
    @IBOutlet weak var item1QuantityLable: UILabel!
    var item1Quantity = 0
    
    
        
    @IBOutlet weak var item2ImageView: UIImageView!
    @IBOutlet weak var item2TitleLable: UILabel!
    @IBOutlet weak var item2PriceLable: UILabel!
    @IBOutlet weak var item2Stepper: UIStepper!
    @IBOutlet weak var item2QuantityLable: UILabel!
    var item2Quantity = 0
    
    
    @IBOutlet weak var item3ImageView: UIImageView!
    @IBOutlet weak var item3TitleLable: UILabel!
    @IBOutlet weak var item3PriceLable: UILabel!
    @IBOutlet weak var item3Stepper: UIStepper!
    @IBOutlet weak var item3QuantityLable: UILabel!
    var item3Quantity = 0
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var MovieStore:MoviesStore!
    var shoppingCart:ShoppingCart!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.shoppingCart = ShoppingCart()
        self.MovieStore = shoppingCart.itemStore
        self.UpdateUI()
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        SpinnerView().animate()
//        SpinnerView().complete()
        if shoppingCart.getTotal() == 0 {
            
            
            
        }
        
        self.UpdateUI()
    }
    
    
    
    
    func UpdateUI(){
        if MovieStore.movies.count >= 3{
            let item1 = MovieStore.movies[0]
            item1ImageView.image = item1.image
            item1TitleLable.text = item1.title
            item1PriceLable.text = "SR \(item1.price)"
            item1QuantityLable.text = "\(item1Quantity)"
            item1ImageView.layer.cornerRadius = 5.0
            item1ImageView.layer.masksToBounds = true
    
            
            
            let item2 = MovieStore.movies[1]
            item2ImageView.image = item2.image
            item2TitleLable.text = item2.title
            item2PriceLable.text = "SR \(item2.price)"
            item2QuantityLable.text = "\(item2Quantity)"
            item2ImageView.layer.cornerRadius = 5.0
            item2ImageView.layer.masksToBounds = true
          
           
            let item3 = MovieStore.movies[2]
            item3ImageView.image = item3.image
            item3TitleLable.text = item3.title
            item3PriceLable.text = "SR \(item3.price)"
            item3QuantityLable.text = "\(item3Quantity)"
            item3ImageView.layer.cornerRadius = 5.0
            item3ImageView.layer.masksToBounds = true
            
            let totalAmount = shoppingCart.getTotal()
            self.totalLabel.text = "\(totalAmount)"
        }
    }
    
    func reset() {
        
        item1Quantity = 0
        item2Quantity = 0
        item3Quantity = 0
        item1Stepper.value = 0
        item2Stepper.value = 0
        item3Stepper.value = 0
    }
    
    
    @IBAction func stepper1(_ sender: UIStepper) {
        let newQuantity = Int(sender.value)
        if newQuantity < item1Quantity{
            
            self.shoppingCart.remove(item: MovieStore.movies[0])
        }else{
            self.shoppingCart.add(item: MovieStore.movies[0])
        }
        
        item1Quantity = newQuantity
        self.UpdateUI()
    }
    
    
    @IBAction func stepper2(_ sender: UIStepper) {
        
        
            let newQuantity = Int(sender.value)
            if newQuantity < item2Quantity{
                self.shoppingCart.remove(item: MovieStore.movies[1])
                
            }else{
                
                self.shoppingCart.add(item: MovieStore.movies[1])
            }
            
            item2Quantity = newQuantity
            self.UpdateUI()
        
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
        
        
            let newQuantity = Int(sender.value)
            if newQuantity < item3Quantity{
                self.shoppingCart.remove(item: MovieStore.movies[2])
            }else{
                self.shoppingCart.add(item: MovieStore.movies[2])
            }
            item3Quantity = newQuantity
            self.UpdateUI()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
}

