//
//  ViewController.swift
//  Test
//
//  Created by morad on 7/13/20.
//  Copyright © 2020 morad. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate{
    


    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.google.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
