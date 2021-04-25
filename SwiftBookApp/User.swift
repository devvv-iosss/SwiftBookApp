//
//  User.swift
//  SwiftBookApp
//
//  Created by Anna on 24.04.2021.
//

struct User {
    let login: String
    let password: String
    
    static func getUser() -> User {
        User(login: "Swift", password: "Book")
    }
}
