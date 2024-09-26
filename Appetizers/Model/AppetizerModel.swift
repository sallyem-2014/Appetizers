//
//  AppetizerModel.swift
//  Appetizers
//
//  Created by Sally on 21/09/2024.
//

import Foundation


struct AppetizerModel: Decodable {
    let carbs, id: Int
    let price: Double
    let protein: Int
    let imageURL: String
    let description: String
    let calories: Int
    let name: String
}

struct AppetizerList: Decodable {
  var request: [AppetizerModel]
}

struct MockData {
  
  static let mockdata = AppetizerModel(carbs: 90,
                                       id: 1,
                                       price: 30,
                                       protein: 006,
                                       imageURL: "",
                                       description: "blablab this is ahjnoaidv andva odv oiahn iohdv oindinvoindndniala",
                                       calories: 90,
                                       name: "sally")
  
  static let appetizers = [mockdata ,mockdata ,mockdata]
}

