//
//  ViewController.swift
//  WebViewTest
//
//  Created by 潇墨 on 2020/7/16.
//  Copyright © 2020 madongkai. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var isFirst = true
    @IBOutlet weak var Mwebview: WKWebView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "11111"
        // Do any additional setup after loading the view.
        if self.isFirst {
            self.Mwebview.isHidden = true
            button.isHidden = false
        }else{
            button.isHidden = true
            Mwebview.load(URLRequest.init(url: URL(string: "https://www.baidu.com")!))
            
            self.Mwebview.addObserver(self, forKeyPath: "title", options: NSKeyValueObservingOptions.new, context: nil)
            self.Mwebview.addObserver(self, forKeyPath: "estimatedProgress", options: NSKeyValueObservingOptions.new, context: nil)
        }
        

        
    }
    
    public override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {

    }
    

    @IBAction func touchNext(_ sender: Any) {
        let vc = ViewController()
        vc.isFirst = false
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    deinit {
        self.Mwebview.removeObserver(self, forKeyPath: "title")
        self.Mwebview.removeObserver(self, forKeyPath: "estimatedProgress")
        self.Mwebview = nil
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
