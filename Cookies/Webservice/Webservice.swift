//
//  Webservice.swift
//  Cookie
//
//  Created by Zubair Nurie on 2021-02-16.
//

import Foundation

struct Webservice {
    let api = "https://602cab4c30ba72001722339b.mockapi.io/api/cookies"
    
    func getCookies(completion: @escaping ([Cookie]?) -> Void){
        
        guard let url = URL(string: api) else {
            fatalError("The api is invalid")
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) {data,response,error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let str = String(decoding: data, as: UTF8.self)
            print("the str" + str)
            let cookie = try? JSONDecoder().decode([Cookie].self, from: data)
            cookie == nil ? completion(nil) : completion(cookie)
        
        }
        
        dataTask.resume()
    }
}
