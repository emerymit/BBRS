//
//  ViewController.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-18.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import UIKit


class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let delegate = UIApplication.shared.delegate as! AppDelegate
    var reminders: [ReminderMO] = []
    let cellID = "reuse"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //reminders.append(Reminder(title: "test", body: "test", beacon: BeaconMO()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //determine how many rows are needed in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ReminderCell
        
        //set cell values
        //cell._lblTitle.text = reminders[indexPath.row].reminderTitle
        //cell._lblBody.text = reminders[indexPath.row].reminderBody
        
        
        return cell
    }
    
    

//    @IBAction func OnStartMonitoring(_ sender: Any) {
//
//        let min: Int! = Int(_txtMINOR.text!)
//        let maj: Int! = Int(_txtMAJOR.text!)
//
//        delegate.beaconManager.startMonitoring(for: CLBeaconRegion(
//            proximityUUID: UUID(uuidString: _txtUUID.text!)!,
//            major: CLBeaconMajorValue(maj), minor: CLBeaconMinorValue(min), identifier: "monitored region"))
//    }
    
}

