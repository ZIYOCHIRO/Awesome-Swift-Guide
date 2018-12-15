import UIKit

import PlaygroundSupport
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
let defaultSession = URLSession(configuration: URLSessionConfiguration.default)
// ------------------------create a session configuration---------------------------------------------------
//
let myDefaultConfiguration = URLSessionConfiguration.default  // on most case
let eConfig = URLSessionConfiguration.ephemeral  // on more private case
let bConfig = URLSessionConfiguration.background(withIdentifier: "backgroundSession") // identifies the session, if the app is terminated while the download are curring, you can use this identifier to recreate the configuration and session objects associated with the transfer
myDefaultConfiguration.allowsCellularAccess = false
myDefaultConfiguration.allowsCellularAccess  // now it's false, we can change it
myDefaultConfiguration.waitsForConnectivity = true

let myDefaultSession = URLSession(configuration: myDefaultConfiguration)
myDefaultSession.configuration.allowsCellularAccess
//-------------------------use session create URLSession Task ---------------------------------------
// URLSession Task can transfer data from or to a server on the network
// it's much more efficient to create multiple tasks in 1 session than a sessino for evert task
// URLSession task: 1.URLSession data task   -- return response in memory, not supported in background sessions
//                  2.URLSession upload task -- easier to provide request body
//                  3.URLSession download tasks --not return response in memeory, but writes the data to a file and returns the location of the file
// ***** This is a example from beginning
// ------------ get -----------
let configuration = URLSessionConfiguration.default  // set configurateion -- brain
configuration.waitsForConnectivity = true
let session = URLSession(configuration: configuration)  // create session -- heart
let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
let task = session.dataTask(with: url) { (data, response, error) in
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        return
    }
    guard let data = data else {  // check if we received valid data
        print(error.debugDescription)
        return
    }
    
    // take the data anc convert it to a string and then print out the result
    if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? {
        print(result)
    }
    // stop playground from executing
    PlaygroundPage.current.finishExecution()
}
// start the task
task.resume()


// ------------ post -----------
let url_post = URL(string: "http://jsonplaceholder.typicode.com/posts")!
let parameters = ["username":"@kilo_loco", "tweet":"Hello, World"]
var request = URLRequest(url: url_post)
request.httpMethod = "POST"
request.addValue("application/json", forHTTPHeaderField: "Content-Type")
let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
request.httpBody = httpBody
let session_post = URLSession(configuration: configuration)
let task_post = session_post.dataTask(with: request) { (data_post, response_post, error_post) in
    if let response = response_post {
        print(response)
    }
    if let data = data_post{
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            print(json)
        } catch {
            print(error)
        }
    }
    // stop playground from executing
    PlaygroundPage.current.finishExecution()
}
task_post.resume()


// ------------URLSession was created with a URLRequest ---------------
// URLRequest use the settings in the sessions configuration but the request can override some configuration setting
// two reasons for creating a request: 1. to modify the HTTP method headers and body before sending the request(the default HTTP method is get, so you must create a request to post or delete)  2.to overrride session configuration values
// Create a URL request from a URL


// ------------ post -----------
















