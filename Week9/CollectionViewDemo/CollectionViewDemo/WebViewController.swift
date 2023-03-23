//
//  WebViewController.swift
//  CollectionViewDemo
//
//  Created by Bennett Lee on 3/8/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load Apple's website into webview

        // String -> "https://www.apple.com"
        // ----- URL
        // ---------- URLRequest


        let url =  URL(string: "https://www.apple.com")!
        let urlRequest = URLRequest(url: url)

        webView.load(urlRequest)
        webView.navigationDelegate = self

        // Do any additional setup after loading the view.
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // Hide the spinner when web page is done loading
        spinner.stopAnimating()
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
