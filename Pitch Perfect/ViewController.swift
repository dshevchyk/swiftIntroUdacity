//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by dmytros on 5/3/15.
//  Copyright (c) 2015 udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var microphoneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var recordingFlagSwitcher :Bool!
    {
        get {
            return recordingLabel.hidden
        }
        set {
            recordingLabel.hidden = newValue;
            stopButton.hidden = newValue
            microphoneButton.enabled = newValue
            
            println("swhitch record  to hidden state: \(newValue)")
        }
    }

    @IBAction func stopRecord(sender: UIButton) {
        recordingFlagSwitcher = true;
    }
    
    @IBAction func recordAudio(sender: UIButton) {
        //TODO: recor audio
        let a = -3
        assert(a < 0, "age can not be less 0")
        if(recordingFlagSwitcher == true) {
            recordingFlagSwitcher = false;
        }
    }
}

