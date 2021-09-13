//
//  WebView.swift
//  project_1
//
//  Created by Valeria Heikkila on 2021/09/04.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let viewModel: WebViewModel
    
    func makeUIView(context: Context) -> WKWebView {
        return viewModel.webView
        }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
            viewModel.request()
        }
    
}
