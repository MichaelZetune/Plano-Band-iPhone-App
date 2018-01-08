//
//  CalendarViewController.swift
//  Plano Band
//
//  Created by Michael Zetune on 6/9/15.
//  Copyright (c) 2015 Michael Zetune. All rights reserved.

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet weak var siteView: UIWebView!
    
    var site = "https://www.google.com/calendar/embed?title=Plano%20Band%20Calendar&mode=AGENDA&src=a6b57lhm0qv6nqgna2d4nfamj2a2vbdo%40import.calendar.google.com&ctz=America%2FChicago"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calendar"
        self.sendRequest()
        
    }
    
    
    func sendRequest() {
        
        let url = NSURL(string: site)
        let request = NSURLRequest(URL: url!)
        siteView.loadRequest(request)
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
