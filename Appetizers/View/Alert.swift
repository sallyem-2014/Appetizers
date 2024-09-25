//
//  Alert.swift
//  Appetizers
//
//  Created by Sally on 25/09/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
  let id = UUID()
  let title: Text
  let message: Text
  let dissmissButton: Alert.Button
}


struct AlertContext {
  
  static let inavalidData = AlertItem(title: Text("Inavalid Data"), message: Text( "The Data recived from server is invalid"), dissmissButton: .default(Text("Ok")))
  static let inavlidURL = AlertItem(title: Text("Server Error"), message: Text( "The URL is invalid"), dissmissButton: .default(Text("Ok")))
  static let invalidResponse = AlertItem(title: Text("Invalid Response"), message: Text( "The Data recived from server is invalid response"), dissmissButton: .default(Text("Ok")))
  static let unableToComplete = AlertItem(title: Text("Unable To Complete"), message: Text( "TUnable To Complete"), dissmissButton: .default(Text("Ok")))

}
