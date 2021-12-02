//
//  ViewController.swift
//  Project_3
//
//  Created by MACBOOK on 24/04/1443 AH.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getMovie()
    
    }
    
    func getMovie(){
        
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "y2mate.com - The Godfather Trailer HD_1080p", ofType: "mp4" )!))
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc,animated: true)
        
    }

}

