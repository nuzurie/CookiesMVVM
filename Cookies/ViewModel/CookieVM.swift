//
//  CookieVM.swift
//  Cookies
//
//  Created by Zubair Nurie on 2021-02-16.
//

import Foundation

struct CookieVM: Identifiable{
    let id: String = UUID.init().uuidString
    let cookie: Cookie
    
    var name: String {
        return cookie.name
    }
    
    var ingredients: String {
        return cookie.ingredients
    }
    
    var price: Double {
        return cookie.price
    }
    
}
