//
//  AppDelegate.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-18.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ESTBeaconManagerDelegate {

    var window: UIWindow?
    let beaconManager = ESTBeaconManager()
    let center = UNUserNotificationCenter.current()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //set the delegate of the beacon manager to the app delegate
        self.beaconManager.delegate = self
        
        self.beaconManager.requestAlwaysAuthorization()
        
        //set up the notifications
        //the permissions were requesting
        let options: UNAuthorizationOptions = [.alert, .sound]
        //request the permissions to the user
        center.requestAuthorization(options: options) {
            (granted, error) in
            if !granted {
                //handle the issue
            }
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func beaconManager(_ manager: Any, didEnter region: CLBeaconRegion) {
        
        let content = UNMutableNotificationContent()
        content.title = "Don't forget"
        content.body = "Buy some milk"
        content.sound = UNNotificationSound.default()

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 300,
                                                        repeats: false)
        
        let request = UNNotificationRequest(identifier: "Beacons", content: content, trigger: trigger)
        
    }

}
