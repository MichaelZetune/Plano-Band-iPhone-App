//
//  SocialMediaViewController.swift
//  Plano Band
//
//  Created by Michael Zetune on 5/23/15.
//  Copyright (c) 2015 Michael Zetune. All rights reserved.
//

import UIKit

class SocialMediaViewController: UIViewController {

    
    
    @IBOutlet weak var twitterWebView: UIWebView!
    
    var site = "https://twitter.com/PSHS_Band"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Twitter"
        self.sendRequest()

    }
    
    
    func sendRequest() {
        
        let url = NSURL(string: site)
        let request = NSURLRequest(URL: url!)
        twitterWebView.loadRequest(request)
    }

    @IBAction func homeButtonPressed(sender: AnyObject) {
    
        sendRequest()
    
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
