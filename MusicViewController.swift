//
//  MusicViewController.swift
//  Plano Band
//
//  Created by Michael Zetune on 6/11/15.
//  Copyright (c) 2015 Michael Zetune. All rights reserved.
//

import UIKit
import AVFoundation


class MusicViewController: UIViewController {
    
    var marchingFileList = ["Plano Fight Song", "Plano School Song", "Grandioso"]
    var jazzFileist = ["Brasilliance", "Memphis Blues", "Cotton Club Stomp"]
    var windFileList = ["Joyce's March", "Enigma Variations", "Asphalt Cocktail"]
    var symphFileList = ["Proud Spirit Concert March", "The Wearing of the Green", "In the Center Ring"]
    var con1FileList = ["Bonds of Unity", "West Highlands Sojourn", "Cajun Folk Songs"]
    var con2FileList = ["Eyes of the Exalted March", "Barbarossa", "Fantasy on an Early American Marching Tune"]
    
    var ensembleList = ["Marching Band", "Jazz Ensemble", "Wind Ensemble", "Symphonic Band", "Concert I", "Concert II"]

    
    
    var musicPlayer = AVAudioPlayer()
    var songFile: NSURL?
    var songName: String?
    
    @IBOutlet weak var songNameLabel: UILabel!

//    @IBOutlet weak var progressSlider: UISlider!
    
    
    @IBAction func playButtonPressed(sender: AnyObject) {
    
        musicPlayer.play()
    }
    
    
    @IBAction func pausedButtonPressed(sender: AnyObject) {
    
        musicPlayer.pause()
        
//        progressSlider.setValue(musicPlayer.currentTime, animated: <#Bool#>)
    }
    
    @IBAction func stopButtonPressed(sender: AnyObject) {
    
    

        musicPlayer.stop()
        
        if musicPlayer.currentTime == 0 {
            self.dismissViewControllerAnimated(true, completion: nil) }
        else {
            musicPlayer.currentTime = 0 }
        
    
    }
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicPlayer = AVAudioPlayer(contentsOfURL: songFile, error: nil)
        musicPlayer.prepareToPlay()
        
        songNameLabel.text = songName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        println("bam")
    }
    

}
