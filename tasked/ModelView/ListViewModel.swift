//
//  ListViewModel.swift
//  tasked
//
//  Created by Zheer Barzan on 4/11/24.
//

import Foundation


class ListViewModel : ObservableObject{
    
    @Published var items: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    
    
    // MARK: - CRUD Functionality
    func getItems(){
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey)
        else {
            return
        }
        guard let saveItems = try? JSONDecoder().decode([ItemModel].self, from: data) else {
            return
        }
        self.items = saveItems

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
    func updateItem(item: ItemModel){
        
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems(){
        if let encodedData = try? JSONEncoder().encode(items){
            
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
        
    }
}
