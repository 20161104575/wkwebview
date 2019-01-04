//
//  ViewController.swift
//  wkwebview
//
//  Created by 20161104575 on 2019/1/4.
//  Copyright © 2019年 20161104575. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var textfile: UITextField!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func backclick(_ sender: Any) {
        webview.goBack()
    }
    
    @IBAction func toclick(_ sender: Any) {
        webview.goForward()
    }
    
    @IBAction func new(_ sender: Any) {
        webview.reload()
    }
    @IBAction func search(_ sender: Any) {
        let urls = textfile.text
        webview.load(NSURLRequest(url: NSURL(string: urls!)! as URL)as URLRequest)
    }
    @IBAction func textEndOnExit(_ sender: Any){
        textfile.resignFirstResponder()
    }
    
    @IBAction func touchUpInside(_ sender: UIControl){
        textfile.resignFirstResponder()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>,with event: UIEvent?){
        textfile.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

