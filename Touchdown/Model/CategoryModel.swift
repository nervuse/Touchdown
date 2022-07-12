//
//  CategoryModel.swift
//  Touchdown
//
//  Created by e.mogilevich on 7/8/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
