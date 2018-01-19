//
//  ViewController.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-18.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var _txtUUID: UITextField!
    @IBOutlet weak var _txtMAJOR: UITextField!
    @IBOutlet weak var _txtMINOR: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnStartMonitoring(_ sender: Any) {
        
        let min: Int! = Int(_txtMINOR.text!)
        let maj: Int! = Int(_txtMAJOR.text!)
        
        delegate.beaconManager.startMonitoring(for: CLBeaconRegion(
            proximityUUID: UUID(uuidString: _txtUUID.text!)!,
            major: CLBeaconMajorValue(maj), minor: CLBeaconMinorValue(min), identifier: "monitored region"))
    }
    
}

