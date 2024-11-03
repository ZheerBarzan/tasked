//
//  ListView.swift
//  tasked
//
//  Created by Zheer Barzan on 2/11/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] =
    ["this is my first task",
    "this is my second task",
    "this is my third task"]
    var body: some View {
        List{
            ForEach(items, id: \.self){
                items in ListRowView(title: items)
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

