//
//  ContentView.swift
//  Appetizers
//
//  Created by Sally on 21/09/2024.
//

import SwiftUI

struct AppetizersTapView: View {
  var body: some View {
    TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
      AppetizerListView()
        .tabItem {
          Image(systemName: "house.fill")
          Text("Home")
        }
      AccountView()
        .tabItem {
          Image(systemName: "person.crop.circle.fill")
          Text("Account")
        }
      
      OrderView()
        .tabItem {
          Image(systemName: "bag.fill")
          Text("Order")
        }
    }.accentColor(.brandPrimary)
  }
}

#Preview {
  AppetizersTapView()
}
