//
//  OrderView.swift
//  Appetizers
//
//  Created by Sally on 21/09/2024.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
      NavigationSplitView {
        Text("OrderView")
          .navigationTitle("📝 Orders")
      } detail: {}
    }
}
#Preview {
    OrderView()
}
