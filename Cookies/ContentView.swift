//
//  ContentView.swift
//  Cookies
//
//  Created by Zubair Nurie on 2021-01-01.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cookieListVM: CookieListVM = CookieListVM()
    
    init() {
        cookieListVM.load()
        
        UINavigationBar.appearance().backgroundColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = .black
        UITableViewCell.appearance().backgroundColor = .black
    }
    
    func getDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM yyyy"
        return formatter.string(from: Date())
    }
    
    
    var body: some View {
        
        let filteredCookies = cookieListVM.search.isEmpty ? cookieListVM.cookies : cookieListVM.cookies.filter { $0.name.starts(with:cookieListVM.search) }
        
        return NavigationView {
            
            ZStack(alignment: .leading) {
                
                Color.black
                
                Text(getDate())
                    .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    .offset(x: 10, y: -350)
                
                SearchView(search: $cookieListVM.search)
                    .offset(y: -310)
                
                CookieListView(cookie: filteredCookies)
                    .offset(y: 80)
                
            }
            
            
            .navigationBarTitle("Cookies")
        }.edgesIgnoringSafeArea(Edge.Set(.bottom))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
