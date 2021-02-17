//
//  CookieListVM.swift
//  Cookies
//
//  Created by Zubair Nurie on 2021-02-16.
//

import Foundation

class CookieListVM: ObservableObject {
    
    @Published var cookies: [CookieVM] = [CookieVM]()
    @Published var search = ""
    
    func load() {
        fetchData()
    }
    
    private func fetchData(){
        
        Webservice().getCookies {cookies in
            if let cookies = cookies {
                DispatchQueue.main.async {
                    self.cookies = cookies.map(CookieVM.init)
                }
            }
        }
    }
}
