//
//  movieVC.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import Foundation
import AVFoundation
import UIKit
import AVKit

class ViewControllersV1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getMovie1()
        
    }
    
    func getMovie1(){
        
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "y2mate.com - The Wolf of Wall Street Official Trailer 2 2013  Leonardo DiCaprio Movie HD_1080p", ofType: "mp4" )!))
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc,animated: true)
        
       
        
    }



}

