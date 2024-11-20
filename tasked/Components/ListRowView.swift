//
//  ListRowView.swift
//  tasked
//
//  Created by Zheer Barzan on 3/11/24.
//
import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle": "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,10)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(id: UUID(), title: "this is my first task", isCompleted: false)
    static var item2 = ItemModel(id: UUID(), title: "this is my second task", isCompleted: true)
    
    
    static var previews: some View {
       
        Group{
         
        }.previewLayout(.sizeThatFits)
    }
}
