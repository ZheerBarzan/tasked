//
//  ListViewModel.swift
//  tasked
//
//  Created by Zheer Barzan on 4/11/24.
//

import Foundation


class ListViewModel : ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(id: UUID(), title: "Task 1", isCompleted: false),
            ItemModel(id: UUID(), title: "Task 2", isCompleted: false),
            ItemModel(id: UUID(), title: "Task 3", isCompleted: false),
            ItemModel(id: UUID(), title: "Task 4", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    func deleteItems(indexset: IndexSet){
        items.remove(atOffsets: indexset)
    }
    func moveItems(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItems(title: String){
        let newItem = ItemModel(id: UUID(), title: title, isCompleted: false)
        items.append(newItem)
    }
}
