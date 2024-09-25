//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Sally on 25/09/2024.
//

import SwiftUI

final class ImageLoader: ObservableObject {
  
  @Published var image: Image?
  
  func loadImage(urlString: String) {
    NetworkManager.shared.downloadImage(urlString: urlString) { uiImage in
      guard let uiImage = uiImage else { return }
      DispatchQueue.main.async {
        self.image = Image(uiImage: uiImage)
      }
    }
  }
  
}


struct RemoteImage : View {
  var image: Image?
  var body: some View {
    image?.resizable() ?? Image("placeholder")
  }
}

struct AppetizerRemoteImage : View {
  @StateObject var imageLoader = ImageLoader()
 
  var urlString: String
  var body: some View {
    RemoteImage(image: imageLoader.image)
      .onAppear {
        imageLoader.loadImage(urlString: urlString)
      }
  }
}
