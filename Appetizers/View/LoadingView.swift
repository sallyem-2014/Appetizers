//
//  LoadingView.swift
//  Appetizers
//
//  Created by Sally on 25/09/2024.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
  
  func makeUIView(context: Context) -> UIActivityIndicatorView {
    
    let activityIndicator = UIActivityIndicatorView(style: .large)
    activityIndicator.color = .brandPrimary
    activityIndicator.startAnimating()
    return activityIndicator
  }
  
  func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
  
}

struct LoadingView: View {
  var body: some View {
    ZStack {
      Color(.systemBackground)
        .ignoresSafeArea(.all)
      ActivityIndicator()
    }
  }
}
