//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/16/23.
//

import SwiftUI
import WebKit

// Handle Swift from JS
class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
            config.userContentController.add(WebInterfaceDialogs() , name: "alert")
            return WKWebView(frame: .zero, configuration: config)
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
           let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")!
           webView.load(URLRequest(url: url))
           
           let name = UserDefaults.standard.string(forKey: "name") ?? ""
           webView.evaluateJavaScript("injectFormData('\(name)')")
    }
    //Sample code to execute JS from APP
    func executeJavaScript(webview: WKWebView) {
        webview.evaluateJavaScript("alert('Hello from Swift!')")
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

#Preview {
    InfoPage()
}
