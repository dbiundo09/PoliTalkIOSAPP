//
//  TempUserInfoStore.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/12/23.
//

import Foundation


class tempUserInfoStore  {
    public var firstName : String?
    public var lastName : String?
    public var age : Int?
    public var email : String?
    @Published public var viewChooser  = ViewChooser.LogIn
    
    init(){}
    
    init(firstName: String, lastName: String, age: Int, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.email = email
    }
}
