//
//  SubmitViewController.swift
//  Plano Band
//
//  Created by Michael Zetune on 6/9/15.
//  Copyright (c) 2015 Michael Zetune. All rights reserved.
//

import UIKit
import MessageUI

class SubmitViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate, MFMailComposeViewControllerDelegate {
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var signatureField: UITextField!
    
    @IBOutlet weak var otherField: UITextField!
    
    @IBOutlet weak var quoteField: UITextView!
    
    @IBAction func submitButtonPressed(sender: AnyObject) {
        
        handleEmailRequest()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameField.delegate = self
        self.signatureField.delegate = self
        self.otherField.delegate = self
        self.quoteField.delegate = self
        
        var swipe = UISwipeGestureRecognizer(target: self, action: "dissmissKeyboard")
        swipe.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipe)
        
        
        // Do any additional setup after loading the view.
    }
    
    func dissmissKeyboard() {
        self.quoteField.resignFirstResponder()
        self.signatureField.resignFirstResponder()
        self.nameField.resignFirstResponder()
        self.otherField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func handleEmailRequest() {
        let mailComposeViewController = configuredMailComposeViewController()
        
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["ginacarrion3@gmail.com", "emilyare@yahoo.com"])
        mailComposerVC.setSubject("New Quote for Toe Up Times")
        mailComposerVC.setMessageBody("My name: \(nameField.text) \n Name for Newspaper: \(signatureField.text) \n Quote: \n \(quoteField.text)", isHTML: false)
        
        return mailComposerVC
    }
    
    func showMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        controller.dismissViewControllerAnimated(true, completion: nil)
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
