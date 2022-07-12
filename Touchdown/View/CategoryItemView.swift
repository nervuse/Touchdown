//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by e.mogilevich on 7/8/22.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category: Category
    
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .frame(width: 140)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
            
    }
}
