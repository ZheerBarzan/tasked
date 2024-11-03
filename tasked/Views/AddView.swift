//
//  AddView.swift
//  tasked
//
//  Created by Zheer Barzan on 3/11/24.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter Task", text: $textFieldText)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Button(action:{}, label: {
                    Text("Save Task")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame( maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }.padding(14)
            
        }.navigationTitle("Add Task 📌")
    }
}

#Preview {
    NavigationView{
    
        AddView()
    }
}
