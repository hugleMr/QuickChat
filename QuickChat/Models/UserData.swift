//
//  UserData.swift
//  QuickChat
//
//  Created by thanhbh on 5/15/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import Foundation
import UIKit.UIColor

class UserData {
    public private(set) var id = ""
    public private(set) var name = ""
    public private(set) var email = ""
    public private(set) var avatarName = ""
    public private(set) var avatarColor = ""
    
    init() {}
    
    init(id: String, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
    init(_ id: String, _ name: String, _ email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
    init(id: String, name: String, email: String, avatarName: String, avatarColor color: String) {
        self.id = id
        self.name = name
        self.email = email
        self.avatarName = avatarName
        self.avatarColor = color
    }
    
    init(_ id: String, _ name: String, _ email: String, _ avatarName: String, _ color: String) {
        self.id = id
        self.name = name
        self.email = email
        self.avatarName = avatarName
        self.avatarColor = color
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
    func setAvatarName(_ avatarName: String) {
        self.avatarName = avatarName
    }
    
    func setAvatarColor(avatarColor: String) {
        self.avatarColor = avatarColor
    }
    
    func setAvatarColor(_ avatarColor: String) {
        self.avatarColor = avatarColor
    }
    
    func  getAvatarColor() -> UIColor {
        let scanner = Scanner(string: avatarColor)
        let skipped = CharacterSet(charactersIn: "[], ")
        let stopped =  CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        var r, g, b, a: NSString?
        scanner.scanUpToCharacters(from: stopped, into: &r)
        scanner.scanUpToCharacters(from: stopped, into: &g)
        scanner.scanUpToCharacters(from: stopped, into: &b)
        scanner.scanUpToCharacters(from: stopped, into: &a)
        var defaultColor = UIColor.lightGray
        guard let rUnwrapped = r else {
            return defaultColor
        }
        guard let gUnwrapped = g else {
            return defaultColor
        }
        guard let bUnwrapped = b else {
            return defaultColor
        }
        guard let aUnwrapped = a else {
            return defaultColor
        }
        let red = CGFloat(rUnwrapped.doubleValue)
        let green = CGFloat(gUnwrapped.doubleValue)
        let blue = CGFloat(bUnwrapped.doubleValue)
        let alpha = CGFloat(aUnwrapped.doubleValue)
        defaultColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        return defaultColor
    }
    
}
