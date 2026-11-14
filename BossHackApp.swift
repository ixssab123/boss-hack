import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = Bundle.main.url(
            forResource: "BOSS_HACK_V18",
            withExtension: "html"
        ) {
            webView.loadFileURL(
                url,
                allowingReadAccessTo: url.deletingLastPathComponent()
            )
        }
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {}
}

@main
struct BossHackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
