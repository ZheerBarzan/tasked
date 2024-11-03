//
//  ListView.swift
//  tasked
//
//  Created by Zheer Barzan on 2/11/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] =
    [ItemModel(id: UUID(), title: "Task 1", isCompleted: false),
     ItemModel(id: UUID(), title: "Task 2", isCompleted: false),
     ItemModel(id: UUID(), title: "Task 3", isCompleted: false),
     ItemModel(id: UUID(), title: "Task 4", isCompleted: true)]
    var body: some View {
        List{
            ForEach(items){
                items in ListRowView(item: items)
            }
        }
        .navigationTitle("To Do List ✅")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView{
    
        ListView()
    }
}

