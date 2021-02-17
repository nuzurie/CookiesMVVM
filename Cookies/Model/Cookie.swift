//
//  Cookie.swift
//  Cookies
//
//  Created by Zubair Nurie on 2021-02-01.
//

import Foundation

class Cookie: Decodable {
    var name: String = ""
    var ingredients: String = ""
    var price: Double = 0.0
    
    init() {
        
    }
}

var testCookie: Cookie {
    let cookie = Cookie()
    cookie.name = "OatMeal"
    cookie.ingredients = "Oats, Flour"
    cookie.price = 0.56
    return cookie
}



