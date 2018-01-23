//
//  BeaconViewController.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import UIKit
import CoreData

class BeaconViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var beacons: [Beacon] = []
    let cellID = "reuse"
    
    @IBOutlet weak var _txtUUID: UITextField!
    @IBOutlet weak var _txtMajor: UITextField!
    @IBOutlet weak var _txtMinor: UITextField!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beacons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BeaconCell
        
        //set cell values
        cell._lblName.text = beacons[indexPath.row].name
        cell._lblMajor.text = String(beacons[indexPath.row].major)
        cell._lblMinor.text = String(beacons[indexPath.row].minor)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        beacons.append(Beacon(nme: "Dark Blue", uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", maj: 11849, min: 22877))
        beacons.append(Beacon(nme: "Green", uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", maj: 18465, min: 46434))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onAddBeacon(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
