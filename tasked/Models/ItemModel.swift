//
//  ItemModel.swift
//  tasked
//
//  Created by Zheer Barzan on 3/11/24.
//

import Foundation

struct ItemModel: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
}
