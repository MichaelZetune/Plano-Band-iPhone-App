//
//  PhotosViewController.swift
//  Plano Band
//
//  Created by Michael Zetune on 8/3/15.
//  Copyright (c) 2015 Michael Zetune. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {


    var site = "http://planoband.smugmug.com/"
    @IBOutlet weak var photosWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Photos"
        self.sendRequest()
        
    }
    
    
    func sendRequest() {
        
        let url = NSURL(string: site)
        let request = NSURLRequest(URL: url!)
        photosWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func refreshButtonPressed(sender: AnyObject) {
    
        sendRequest()
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
