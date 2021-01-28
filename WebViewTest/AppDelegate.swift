//
//  AppDelegate.swift
//  WebViewTest
//
//  Created by 潇墨 on 2020/7/16.
//  Copyright © 2020 madongkai. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
                
        let vc = ViewController()
        let nav = UINavigationController.init(rootViewController: vc)
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
        //add dev2
        //新建dev1
        //fix dev2
        //add dev3
        //fix dev2
        //add dev3
        //fix dev2
        //add dev3
        return true
    }

    // MARK: UISceneSession Lifecycle

   

}

