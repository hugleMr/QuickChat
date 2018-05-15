//
//  UserDataService.swift
//  QuickChat
//
//  Created by thanhbh on 5/15/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import Foundation
import Alamofire

class UserDataService {
    
    static let instance = UserDataService()
    public private(set) var id = ""
    public private(set) var name = ""
    public private(set) var email = ""
    public private(set) var avatarName = ""
    public private(set) var avatarColor = ""
    
    func setUserData(userData: UserData) {
        self.id = userData.id
        self.name = userData.name
        self.email = userData.email
        self.avatarName = userData.avatarName
        self.avatarColor = userData.avatarColor
    }
}
