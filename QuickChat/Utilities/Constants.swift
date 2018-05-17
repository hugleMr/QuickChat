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
let TO_AVATAR = "toAvatarSegue"
let CHANNEL_CELL = "channelCell"
//let AVATAR_CELL = "avatarCell"
let AVATAR_CELL = "avatarCollectionCell"

// User defaults
let ERROR_MESSAGE = "errorMessage"
let LOGGED_IN_KEY = "loggedIn"
let TOKEN_KEY = "token"
let USER_EMAIL = "userEmail"

// API URL
let BASE_URL = "https://quickchat-api.herokuapp.com/v1/"
//let BASE_URL = "http://localhost:3005/v1/"
let URL_REGISTER_USER = "\(BASE_URL)account/register"
let URL_LOGIN_USER = "\(BASE_URL)account/login"
let URL_ADD_USER = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"

// HEADER
let HEADER_API = ["Content-Type": "application/json; charset=utf-8"]

// Constants
let NUMBER_AVATAR_IMAGE = 28
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")
