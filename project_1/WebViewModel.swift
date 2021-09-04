//
//  WebViewModel.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import Foundation
import WebKit

public class WebViewModel: NSObject {
    
    let stringUrl: String
    let webView: WKWebView
    
    init(stringUrl: String){
        self.stringUrl = stringUrl
        self.webView = WKWebView()
    }
    
    public func request(){
        guard let url = URL(string: stringUrl) else { return }
        
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        if webView.navigationDelegate == nil {
            webView.navigationDelegate = self
        }
    }
}

extension WebViewModel: WKNavigationDelegate {
    public func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
    }
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    }
}
