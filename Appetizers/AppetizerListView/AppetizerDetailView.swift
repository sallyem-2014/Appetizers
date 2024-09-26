//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Sally on 26/09/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
  let appetizer: AppetizerModel
  var body: some View {
    VStack {
      Image("sample")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 320, height: 225)
      
      
      VStack {
        Text(appetizer.name)
          .font(.title2)
          .fontWeight(.semibold)
        Text(appetizer.description)
          .multilineTextAlignment(.center)
          .font(.body)
          .padding()
        
        HStack(spacing: 40) {
          VStack (spacing: 5) {
            Text("Calories")
              .bold()
              .font(.caption)
            Text("\(appetizer.calories)")
              .foregroundStyle(.secondary)
              .fontWeight(.semibold)
              .italic()
          }
          
          VStack (spacing: 5) {
            Text("Carbs")
              .bold()
              .font(.caption)
            Text("\(appetizer.carbs)")
              .foregroundStyle(.secondary)
              .fontWeight(.semibold)
              .italic()
          }
          
          VStack (spacing: 5) {
            Text("Protien")
              .bold()
              .font(.caption)
            Text("\(appetizer.protein)")
              .foregroundStyle(.secondary)
              .fontWeight(.semibold)
              .italic()
          }
        }
        
      }
      
      Spacer()
      
      Button {
        print("$")
      } label: {
        Text("$\(appetizer.price, specifier: "%.2f") - Add Order")
          .font(.title3)
          .fontWeight(.semibold)
          .frame(width: 260, height: 50)
          .foregroundColor(.white)
          .background(Color(.brandPrimary))
          .cornerRadius(10)
      }
      .padding(.bottom, 20)
    }
    
    .frame(width: 320, height: 525)
    .background(Color(.systemBackground))
    .cornerRadius(12)
    .shadow(radius: 40)
    .overlay(Button{
      print("dissmis")
    } label: {
      Image(systemName: "xmark")
        .padding()
        .background(Color(.white))
        .clipShape(Circle())
        .opacity(0.8)
        .imageScale(.small)
        .foregroundStyle(.black)
    }, alignment: .topTrailing)
  }
}

#Preview {
  AppetizerDetailView(appetizer: MockData.mockdata)
}
