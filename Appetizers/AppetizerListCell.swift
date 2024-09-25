//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Sally on 22/09/2024.
//

import SwiftUI

struct AppetizerListCell: View {
  let apprtizer: AppetizerModel
    var body: some View {
      HStack {
        AppetizerRemoteImage(urlString: apprtizer.imageURL ?? "placeholder")
          .frame(width: 120 ,height: 90)
          .cornerRadius(8)
        VStack(alignment: .leading, spacing: 5) {
          Text(apprtizer.name ?? "no nam")
            .font(.title2)
            .fontWeight(.medium)
          
          Text("$\(apprtizer.price ?? 0.00, specifier: "%.2f")" )
            .foregroundStyle(.secondary)
            .fontWeight(.semibold)
        }
      }
    }
}

#Preview {
  AppetizerListCell(apprtizer: MockData.mockdata)
}
