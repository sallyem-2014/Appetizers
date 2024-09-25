//
//  AccountView.swift
//  Appetizers
//
//  Created by Sally on 21/09/2024.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
      NavigationSplitView {
        Text("AccountView")
          .navigationTitle("👤 Account")
      } detail: {}
    }
}

#Preview {
    AccountView()
}
