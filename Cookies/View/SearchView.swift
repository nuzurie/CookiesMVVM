//
//  SearchView.swift
//  Cookies
//
//  Created by Zubair Nurie on 2021-02-16.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var search: String
    var body: some View {
        
        HStack {
            
            
            Spacer()
            TextField("Search Cookies", text: $search)
            
            Image(systemName: "magnifyingglass")
            Spacer()
            
        }
        .foregroundColor(.gray)
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(search: .constant(""))
    }
}
