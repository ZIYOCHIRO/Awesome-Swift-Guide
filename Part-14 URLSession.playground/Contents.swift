import UIKit

/*
 URLSessionConfiguration lets you control : network service type(wifi / cellular), timeout, caching, HTTP headers...
 URLSesiionConfiguration.default
 URLSesiionConfiguration.ephemeral
 URLSesiionConfiguration.background(withIdentifier:)
 You must set URLSessionConfiguratin before make an URLSession instance
 
 */


// create a share session, get its session configuration, read only.
let sharedSession = URLSession.shared
sharedSession.configuration.allowsCellularAccess = false// read only
sharedSession.configuration.allowsCellularAccess   // it's still true
// create a default session
let defaultSession = URLSession(configuration: URLSessionConfiguration.defaultß)
// ---------------------------------------------------------------------------
// create a session configuration
let myDefaultConfiguration = URLSessionConfiguration.default  // on most case
let eConfig = URLSessionConfiguration.ephemeral  // on more private case
let bConfig = URLSessionConfiguration.background(withIdentifier: "backgroundSession") // identifies the session, if the app is terminated while the download are curring, you can use this identifier to recreate the configuration and session objects associated with the transfer
myDefaultConfiguration.allowsCellularAccess = false
myDefaultConfiguration.allowsCellularAccess  // now it's false, we can change it
myDefaultConfiguration.waitsForConnectivity = true

let myDefaultSession = URLSession(configuration: myDefaultConfiguration)
myDefaultSession.configuration.allowsCellularAccess











