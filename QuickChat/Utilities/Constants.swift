//
//  Constants.swift
//  QuickChat
//
//  Created by thanhbh on 5/11/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import Foundation

typealias CompletionHandle = (_ success: Bool) -> ()

// Segues
let TO_LOGIN = "toLoginSegue"
let TO_SIGN_UP = "toSignUpSegue"
let TO_CHANNEL = "toChannelSegue"
let CHANNEL_CELL = "channelCell"

// User defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// API URL
// let BASE_URL = "https://chattychatchat.herokuapp.com/v1/"
let BASE_URL = "http://localhost:3005/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

// HEADER
let HEADER_API = ["Content-Type": "application/json; charset=utf-8"]
