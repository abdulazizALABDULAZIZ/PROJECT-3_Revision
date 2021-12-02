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

    
    var setSelectedIndex: Int?
    var selectedIndex: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = setSelectedIndex
        getMovie(selectedIndex ?? 0)
    
    }
    
    func getMovie(_ index:Int) {
        if index != 0 {
            let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "\(index)", ofType: "mp4" )!))
            let vc = AVPlayerViewController()
            vc.player = player
            present(vc,animated: true)
        }
    }

}

