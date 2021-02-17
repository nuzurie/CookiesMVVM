//
//  CookieListView.swift
//  Cookies
//
//  Created by Zubair Nurie on 2021-02-16.
//

import SwiftUI

struct CookieListView: View {
    
    
    var cookie: [CookieVM]
    
    var body: some View {
        List
        {
            ForEach(self.cookie) {cookie in
            CookieCellView(cookie: cookie)
                
        }
            .listRowBackground(Color.black)
        }
        
        
    }
}

struct CookieCellView: View {
    
    var cookie: CookieVM
    var body: some View {
        
        HStack {
            VStack{
                Text(cookie.name.uppercased())
                    .font(.title3)
                    .foregroundColor(.orange)
                    .bold()
                    .offset(x: -14)
                
                Text(cookie.ingredients.capitalized)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(.horizontal, 5)
            }
            Spacer()

                Text(String(format: "%.2f", cookie.price))
                    .font(.title3)
                    .foregroundColor(.gray)
                    .bold()

        }
        
        
    }
}


struct CookieListView_Previews: PreviewProvider {
    static var previews: some View {
        
        return CookieListView(cookie: [CookieVM(cookie: testCookie)])
    }
}
