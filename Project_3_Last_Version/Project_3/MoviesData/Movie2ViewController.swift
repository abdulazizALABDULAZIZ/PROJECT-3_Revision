//
//  Movie2ViewController.swift
//  Project_3
//
//  Created by MACBOOK on 25/04/1443 AH.
//

import UIKit
import AVKit
import AVFoundation


class Movie2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getMovie2()
        
    }

    func getMovie2(){
        
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Goodfellas (1990) Official Trailer #1 - Martin Scorsese Movie", ofType: "mp4" )!))
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc,animated: true)
        
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
