//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by dmytros on 5/6/15.
//  Copyright (c) 2015 udacity. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    
    var alertSlowSound: NSURL?
    var beepPlayer: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        alertSlowSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")!)!
        println(alertSlowSound)
        stopButton.hidden = true
        beepPlayer = AVAudioPlayer(contentsOfURL: alertSlowSound, error: nil)
        beepPlayer.enableRate = true
        // Do any additional setup after loading the view.
    }
    func playMySound(slow: Bool) {
        stopButton.hidden = false
        beepPlayer.stop()
        beepPlayer.currentTime = 0.0
        if slow {
            beepPlayer.rate = 0.5
        } else {
            
            beepPlayer.rate = 2.0
        }
        beepPlayer.play()
    }
    @IBAction func playSlow(sender: UIButton) {
        playMySound(true)
    }
    
    @IBAction func playFast(sender: UIButton) {
        playMySound(false)
    }
    @IBAction func spotPlaying(sender: UIButton) {
        stopButton.hidden = true
        beepPlayer.stop()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
