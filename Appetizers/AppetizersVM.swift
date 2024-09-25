//
//  AppetizersVM.swift
//  Appetizers
//
//  Created by Sally on 24/09/2024.
//

import Foundation
import SwiftUI

class AppetizersVM: ObservableObject {
  
  @Published var appetizers : [AppetizerModel] = []
  @Published var alertItem: AlertItem?
  @Published var isLoading = false
  func getAppertizers() {
    isLoading = true
    NetworkManager.shared.getAppetizers { [weak self ] result in
      guard let self else { return }
   
      DispatchQueue.main.async {
        self.isLoading = false
        switch result {
        case .success(let appetizres):
          self.appetizers = appetizres
        case.failure(let error):
          switch error {
          case .inavalidData:
            self.alertItem =  AlertContext.inavalidData
          case .inavlidURL:
            self.alertItem = AlertContext.inavlidURL
          case .invalidResponse:
            self.alertItem =  AlertContext.invalidResponse
          case .unableToComplete:
            self.alertItem = AlertContext.unableToComplete
          }
        }
      }
    }
  }
}
