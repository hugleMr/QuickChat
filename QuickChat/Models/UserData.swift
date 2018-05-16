//
//  UserData.swift
//  QuickChat
//
//  Created by thanhbh on 5/15/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import Foundation

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
}
