//
//  MusicSelectionTableViewController.swift
//  Plano Band
//
//  Created by Michael Zetune on 6/11/15.
//  Copyright (c) 2015 Michael Zetune. All rights reserved.
//

import UIKit



class MusicSelectionTableViewController: UITableViewController {
    
    var marchingSongList = ["Plano Fight Song", "Plano School Song", "March Grandioso"]
    var jazzSongList = ["Brasilliance", "Memphis Blues", "Cotton Club Stomp"]
    var windSongList = ["Joyce's March", "Enigma Variations", "Asphalt Cocktail"]
    var symphSongList = ["Proud Spirit Concert March", "The Wearing of the Green", "In the Center Ring"]
    var con1SongList = ["Bonds of Unity", "West Highlands Sojourn", "Cajun Folk Songs"]
    var con2SongList = ["Eyes of the Exalted March", "Barbarossa", "Fantasy on an Early American Marching Tune"]
    
    var ensembleList = ["Marching Band", "Jazz Ensemble", "Wind Ensemble", "Symphonic Band", "Concert I", "Concert II"]
    

    
    var section: Int?
    var row: Int?
    var ensembleNum: Int?
    var songNum: Int?
    
    var songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("song", ofType: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return ensembleList.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return con2SongList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        switch indexPath.section {
        case 0: cell.textLabel?.text = marchingSongList[indexPath.row]
        case 1: cell.textLabel?.text = jazzSongList[indexPath.row]
        case 2: cell.textLabel?.text = windSongList[indexPath.row]
        case 3: cell.textLabel?.text = symphSongList[indexPath.row]
        case 4: cell.textLabel?.text = con1SongList[indexPath.row]
        default: cell.textLabel?.text = con2SongList[indexPath.row]
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ensembleList[section]
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        section = indexPath.section
        row = indexPath.row
        
        println("\(section)")
        println("\(row)")
        
        self.performSegueWithIdentifier("toMusicView", sender: self)
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        println("hello1")
        
      
        
        if let musicViewController = segue.destinationViewController as? MusicViewController {
            
            switch section! {
                
            case 0:  musicViewController.songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Marching/\(marchingSongList[row!])", ofType: "mp3")!)
                musicViewController.songName = marchingSongList[row!]
            case 1: musicViewController.songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Jazz Ensemble/\(jazzSongList[row!])", ofType: "mp3")!)
                musicViewController.songName = jazzSongList[row!]
            case 2: musicViewController.songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Wind Ensemble/\(windSongList[row!])", ofType: "mp3")!)
                musicViewController.songName = windSongList[row!]
            case 3: musicViewController.songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Symphonic/\(symphSongList[row!])", ofType: "mp3")!)
                musicViewController.songName = symphSongList[row!]
            case 4: musicViewController.songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Concert I/\(con1SongList[row!])", ofType: "mp3")!)
            musicViewController.songName = con1SongList[row!]
            default: musicViewController.songFile = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Concert II/\(con2SongList[row!])", ofType: "mp3")!)
                musicViewController.songName = con2SongList[row!]
                
            }
            
        }
  
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}









