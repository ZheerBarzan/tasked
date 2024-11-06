//
//  ItemModel.swift
//  tasked
//
//  Created by Zheer Barzan on 3/11/24.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: UUID
    let title: String
    let isCompleted: Bool
    
    
    init(id: UUID = UUID(), title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion()-> ItemModel{
        
        return ItemModel(id:id , title: title, isCompleted: !isCompleted)
    }
    
}
