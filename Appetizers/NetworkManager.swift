//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Sally on 22/09/2024.
//

import UIKit

final class NetworkManager {
  static let shared = NetworkManager()
  static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
  private let appetizersURL = baseURL + "appetizers"
  
  private var cache = NSCache<NSString, UIImage>()
  private init() {}
  
  func getAppetizers(completion: @escaping(Result<[AppetizerModel], APError>) -> Void) {
    guard let url = URL(string: appetizersURL) else {
      completion(.failure(.inavlidURL))
      return
    }
    
    let request = URLRequest(url: url)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      if let _ = error {
        completion(.failure(.unableToComplete))
        return
      }
      
      guard let response = response as? HTTPURLResponse , response.statusCode == 200 else {
        completion(.failure(.invalidResponse))
        return
      }
      
      guard let data = data else {
        completion(.failure(.inavalidData))
        return
      }
      
      do {
        let decoder = JSONDecoder()
        let decodedResponse = try decoder.decode(AppetizerList.self, from: data)
        completion(.success(decodedResponse.request))
      } catch {
        print(error.localizedDescription)
        completion(.failure(.inavalidData))
      }
    }
    
    task.resume()
  }
  
  func downloadImage(urlString: String, completion: @escaping(UIImage?) -> Void) {
    let cacheKey = NSString(string: urlString)
    
    if let image = cache.object(forKey: cacheKey) {
      completion(image)
      return
    }
    
    guard let urlString = URL(string:urlString) else {
      completion(nil)
      return
    }
    let task = URLSession.shared.dataTask(with: URLRequest(url: urlString)) { data, response, error in
      guard let data = data , let image = UIImage(data: data) else {
        completion(nil)
        return
      }
      self.cache.setObject(image, forKey: cacheKey)
      completion(image)
    }
    task.resume()
  }
}
