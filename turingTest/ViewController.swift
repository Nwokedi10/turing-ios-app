//
//  ViewController.swift
//  turingIOS
//
//  Created by DIAMOND on 10/12/23.

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    @IBOutlet weak var webview: WKWebView!
    @IBOutlet weak var reloadBTN: UIButton!
    @IBOutlet weak var textField: UITextField?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webview.uiDelegate = self
        webview.navigationDelegate = self

        // Initially load the website
        loadWebsite()
    }

    // Function to load the website and hide the button and textfield
    func loadWebsite() {
        // Hide the text field and button
        textField?.isHidden = true
        reloadBTN.isHidden = true
        activityIndicator.startAnimating() // Start the activity indicator

        let currentTrack = TrackWithLiveTracksDto()
        currentTrack.id = 1
        currentTrack.name = "Taylor Swift"
        currentTrack.trackName = "Love Story"
        currentTrack.trackNo = 1
        currentTrack.playbackCount = 0
        currentTrack.artistId = 2
        currentTrack.albumId = 3
        currentTrack.genreId = 4
        currentTrack.showOnAndroid = 1
        currentTrack.isReplicated = 0

        // Construct the URL with track information, please update this link with live server link to enable codyAI
        let urlString = "https://turingtest-71926.web.app/link?artistName=\(currentTrack.name ?? "")&trackName=\(currentTrack.trackName ?? "")"
        print("Name: \(currentTrack.name ?? "N/A")")
        print("Track Name: \(currentTrack.trackName ?? "N/A")")

        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webview.load(request)
            activityIndicator.isHidden = true
        }
    }
    
    // Show the text field and button when the website is not reachable
    func showWebsiteNotReachable() {
        webview.isHidden = true
        textField?.isHidden = false
        reloadBTN.isHidden = false
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
    }

    @IBAction func reloadBTNClicked(_ sender: Any) {
        // Hide the text field and button
        textField?.isHidden = true
        reloadBTN.isHidden = true
        activityIndicator.isHidden = false

        // Load the website again
        loadWebsite()
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        // Show website not reachable and hide the web view
        showWebsiteNotReachable()
    }
}
