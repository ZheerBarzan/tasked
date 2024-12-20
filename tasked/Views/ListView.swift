//
//  ListView.swift
//  tasked
//
//  Created by Zheer Barzan on 2/11/24.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView().transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List {
                    ForEach(listViewModel.items) {
                        items in ListRowView(item: items).onTapGesture {
                            withAnimation(.linear) {
                                listViewModel.updateItem(item: items)
                            }
                        }
                    }
                    .onDelete(perform: listViewModel.deleteItems)
                    .onMove(perform: listViewModel.moveItems)
                }
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
    NavigationView {
        ListView()
    }.environmentObject(ListViewModel())
}
