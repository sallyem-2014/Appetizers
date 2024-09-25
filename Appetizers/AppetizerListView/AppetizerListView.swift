//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Sally on 21/09/2024.
//

import SwiftUI

struct AppetizerListView: View {
  @StateObject var vm = AppetizersVM()
  var body: some View {
    ZStack {
      NavigationSplitView {
        List(vm.appetizers, id: \.id) { apprtizer in
          AppetizerListCell(apprtizer: apprtizer)
        }
        .navigationTitle(" 🍱 Appetizer")
      } detail: {
        
      }
      .onAppear {
        vm.getAppertizers()
      }
      
      if vm.isLoading {
        LoadingView()
      }
    }
    .alert(item: $vm.alertItem) { alertItem in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dissmissButton)
    }
  }
}

#Preview {
  AppetizerListView()
}
