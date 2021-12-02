//
//  checkOutViewController.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import UIKit

class checkOutViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Trailers and payment"
        
    }
        

    @IBAction func Complete(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "Confirm Tickets", message: "Please confirm that you want to make a payment of Tickets !", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                
        }
        let confirmAction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            
            
        
            
            
            let successActionSheet = UIAlertController(title: "Thank you!", message: "your payment was processed successfully Please check your email card Tickets receipt", preferredStyle: .actionSheet)
            self.present(successActionSheet, animated: true, completion: nil)
            
            let continueShoppingAction = UIAlertAction(title: "Let's book new Tickets!", style: UIAlertAction.Style.default){ (action)
                in
             
                self.navigationController?.popToRootViewController(animated: true)
                self.dismiss(animated: true, completion: nil)
                
                
            }
            
            successActionSheet.addAction(continueShoppingAction)
           
        
        
        
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        
        
            
    
    }
        

        
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



