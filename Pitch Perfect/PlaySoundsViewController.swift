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
    
    var alertSlowSound: NSURL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertSlowSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")!)!
        println(alertSlowSound)
        // Do any additional setup after loading the view.
    }
    func playMySound(beepSoundURL: NSURL) {
        
        var beepPlayer = AVAudioPlayer(contentsOfURL: beepSoundURL, error: nil)
        beepPlayer.prepareToPlay()
        beepPlayer.play()
    }
    @IBAction func playSlow(sender: UIButton) {
        playMySound(alertSlowSound!)
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
