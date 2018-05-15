//
//  User.swift
//  QuickChat
//
//  Created by thanhbh on 5/15/18.
//  Copyright © 2018 vinicorp. All rights reserved.
//

import Foundation

class User {
    public private(set) var email = ""
    public private(set) var password = ""
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    
    init(_ email: String, _ password: String) {
        self.email = email
        self.password = password
    }
}
