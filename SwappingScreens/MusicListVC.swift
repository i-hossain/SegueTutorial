//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Ismail Hossain on 2017-04-06.
//  Copyright © 2017 Ismail Hossain. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func Load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Human Nature"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
                print("song: \(song)")
            }
        }
    }
    

}
