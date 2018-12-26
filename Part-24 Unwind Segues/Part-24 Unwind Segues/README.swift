//
//  README.swift
//  Part-24 Unwind Segues
//
//  Created by 10.12 on 2018/12/26.
//  Copyright © 2018 Rui. All rights reserved.
//

import Foundation



// -------------- Unwind segues
/*
 1. how to directly go back to home screen if you are in screen 4 ?
 -- Create @IBAction func unwindToOne(_ sender: UIStoryboardSegue) { }
 -- control drag backHome Button to Exit at the top bar (third one, not the controller) Mainly Connect the Outlets.
 */


// --------------- passing data between views
/*
 2. how to pass data between different view?
 -- using override func prepare(for segue: UIStoryboardSegue, sender: Any?) 
 */
