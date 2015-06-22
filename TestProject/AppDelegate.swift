//
//  AppDelegate.swift
//  TestProject
//
//  Created by Kevin Clark on 2015-06-21.
//  Copyright © 2015 Kevin Clark. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow? = UIWindow()
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    window!.backgroundColor = UIColor.whiteColor()
    window!.rootViewController = UINavigationController(rootViewController: TableViewController())
    window!.makeKeyAndVisible()
    
    return true
  }

}

